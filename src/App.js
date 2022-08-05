import './App.css';
import { BrowserRouter as Router, Route, BrowserRouter, Routes } from 'react-router-dom';



import PaymentForm from './Components/PaymentForm'
import Home from './Components/Home';
import Login from './LoginAndSignup/Login'

function App() {
  return (
    
      <div>

        <Routes>    
           <Route path ='/' element={<Home></Home>}></Route>
           <Route path ='/Home' element={<Home></Home>}></Route>
           <Route path ='/Login' element={<Login></Login>}></Route>
           <Route path ='/PaymentForm' element={<PaymentForm></PaymentForm>}></Route>
        </Routes>
        </div>
      
    
    
  );
}

export default App;
