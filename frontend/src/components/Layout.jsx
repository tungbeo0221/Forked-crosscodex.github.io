import { Outlet, Link } from "react-router-dom"

const Layout = () => {
  return (
    <>
      <nav>
        <ul>
          <li>
            <Link to="/devhub">Home</Link>
          </li>
          <li>
            <Link to="/devhub/signin">Sign in</Link>
          </li>
          <li>
            <Link to="/devhub/signup">Sign up</Link>
          </li>
        </ul>
      </nav>

      <Outlet />
    </>
  )
}

export default Layout
