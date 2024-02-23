
<h1>Cadastrar Cliente</h1>

<!-- Formulário para adicionar um novo cliente -->
<form action="?page=salvar_cliente" method="POST">
    <!-- Campo oculto para definir a ação como "cadastrar" -->
    <input type="hidden" name="acao" value="cadastrar">
    
    <!-- Campo para inserir o nome do cliente -->
    <div class="mb-3">
        <label>Nome:</label>
        <input type="text" name="nome" required class="form-control">
    </div>

    <!-- Campo para inserir o email do cliente -->
    <div class="mb-3">
        <label>Email:</label>
        <input type="email" name="email" required class="form-control">
    </div>
    
    <!-- Botão para enviar o formulário -->
    <button type="submit" class="btn btn-primary">Salvar</button>
</form>