import sys
import re


def refactor_markdown(input_file, output_file):
    # Read the input Markdown file
    with open(input_file, "r") as f:
        markdown_content = f.read()

    # Extract 4th level headings and their content
    heading_pattern = re.compile(
        r"^#### (.+?)\n((?:.|\n)+?)(?=\n#### |\Z)", re.MULTILINE
    )
    headings = heading_pattern.findall(markdown_content)

    # Write each heading and its content into separate files
    for index, (heading, content) in enumerate(headings, start=1):
        heading_filename = f"{output_file}_{index}.md"
        with open(heading_filename, "w") as f:
            f.write(f"#### {heading}\n{content.strip()}\n")

    print(f"Refactored {len(headings)} 4th level headings into separate files.")


if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("Usage: python refactor_markdown.py <input_file> <output_prefix>")
        sys.exit(1)

    input_file = sys.argv[1]
    output_file = sys.argv[2]
    refactor_markdown(input_file, output_file)
