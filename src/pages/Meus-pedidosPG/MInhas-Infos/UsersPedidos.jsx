import { useState } from "react"

export default function UsersPedidos() {
    const [nome, setNome] = useState("Ricardo Silva")
    const [CPF, setCPF] = useState("123.456.789-00")
    const [email, setEmail] = useState("ricardo.silva@gmail.com")
    const [cell, setCell] = useState("(85) 98765-4321")
    const [adress, setAdress] = useState("Rua das Flores, 123")
    const [Bairro, setBairro] = useState("Jardim")
    const [Cidade, setCity] = useState("Fortaleza, Ceará")
    const [CEP, setCEP] = useState("600-0000")        
    
    const user = { nome, email, CPF, cell, adress, Bairro, Cidade, CEP }

    return { user }
}