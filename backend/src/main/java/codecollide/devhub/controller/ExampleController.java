package codecollide.devhub.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import codecollide.devhub.model.Message;

@RestController
public class ExampleController {

  // Sample GET endpoint
  @GetMapping("/")
  public String hello() {
    return "This is the application root";
  }

  /**
   * POST endpoint to echo the content of a message.
   *
   * @param message The message object containing the content to echo.
   * @return A string containing the echoed message.
   */
  @PostMapping("/echo")
  public String echo(@RequestBody Message message) {
    return "You said: " + message.getContent();
  }
}
