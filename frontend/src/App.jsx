import { BrowserRouter, Routes, Route } from "react-router-dom"
import Layout from "./components/Layout"
import SignUpForm from "./components/SignUpForm"
import SignInForm from "./components/SignInForm"
import Home from "./components/Home"
import './App.css'

function App () {
  return (
    <BrowserRouter>
      <Routes>
        <Route path="/" element={<Layout />}>
          <Route index element={<Home />} />
          <Route path="signup" element={<SignUpForm />} />
          <Route path="signin" element={<SignInForm />} />
          {/* <Route path="*" element={<NoPage />} /> */}
        </Route>
      </Routes>
    </BrowserRouter>
  )
}

export default App
