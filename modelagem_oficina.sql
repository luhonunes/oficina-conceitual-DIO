Table Cliente {
  ID INT [pk]
  Nome VARCHAR(100)
  Endereco VARCHAR(200)
}

Table Veiculo {
  ID INT [pk]
  Placa VARCHAR(10)
  Modelo VARCHAR(50)
  Ano INT
  Cliente_ID INT [ref: > Cliente.ID]
}

Table Mecanico {
  ID INT [pk]
  Nome VARCHAR(100)
  Endereco VARCHAR(200)
  Especialidade VARCHAR(50)
}

Table OrdemServico {
  NumeroOS INT [pk]
  DataEmissao DATE
  ValorTotal DECIMAL(10, 2)
  Status VARCHAR(20)
  DataConclusao DATE
  Veiculo_ID INT [ref: > Veiculo.ID]
  Mecanico_ID INT [ref: > Mecanico.ID]
}

Table Servico {
  ID INT [pk]
  Descricao VARCHAR(200)
  Valor DECIMAL(10, 2)
  TabelaReferencia VARCHAR(50)
}

Table Peca {
  ID INT [pk]
  Descricao VARCHAR(200)
  Valor DECIMAL(10, 2)
}

Table OrdemServico_Servico {
  OrdemServico_NumeroOS INT [ref: > OrdemServico.NumeroOS]
  Servico_ID INT [ref: > Servico.ID]
}

Table OrdemServico_Peca {
  OrdemServico_NumeroOS INT [ref: > OrdemServico.NumeroOS]
  Peca_ID INT [ref: > Peca.ID]
}


