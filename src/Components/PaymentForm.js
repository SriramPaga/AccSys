import React, { useState } from 'react'
import Axios from 'axios'
function PaymentForm() {
  
const [id, setId] = useState(0)
const [accountname, setAccountName] = useState("")
const [accountnumber, setAccountNumber] = useState("")
const [accountdescription, setAccountDescription] = useState("")
const [accountstatus, setAccountStatus] = useState("")

const addRecord = () => {
  Axios.post('http://localhost:3001/create', {
      id: id,
      accountname: accountname,
      accountnumber: accountnumber,
      accountdescription: accountdescription,
      accountstatus: accountstatus,
  }).then(() => {
      console.log('Successfully created client record.')
  });
}


  return (
    <div className='payform'>
      <h1>Payment form</h1>
      <label> ID</label>
      <input onChange={(event)=> {setId(event.target.value)}}></input>
      <label> Account Name </label>
      <input onChange={(event)=> {setAccountName(event.target.value)}}></input>
      <label> Account Number </label>
      <input onChange={(event)=> {setAccountNumber(event.target.value)}}></input>
      <label> Account Description </label>
      <input onChange={(event)=> {setAccountDescription(event.target.value)}}></input>

      <button onClick={addRecord}>Submit</button>
    </div>
  )
}

export default PaymentForm