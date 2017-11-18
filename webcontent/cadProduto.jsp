<%@ include file="topo.jsp" %>
<div class="android-content mdl-layout__content">
        <div class="content-grid mdl-grid">
          <div class="mdl-cell">
            <!-- add content here -->
          </div>
          <div class="mdl-cell">
          <h3>Cadastrar Produto</h3>
            <form action="AdicionarProduto" name="AdicionarProduto" method="post">
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
              <input class="mdl-textfield__input" type="text" id="nomeProduto" name="nomeProduto">
              <label class="mdl-textfield__label">Nome do Produto</label>
            </div>

            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
              <textarea class="mdl-textfield__input" id="descricao" name="descricao" rows= "3"></textarea>
              <label class="mdl-textfield__label">Descrição do Produto</label>
            </div>

            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
              <input class="mdl-textfield__input" type="file" accept="image/*" id="foto" name="foto"  placeholder="">
              <label class="mdl-textfield__label">Foto</label>
            </div>   

            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
              <input class="mdl-textfield__input" type="text" id="download" name="download">
              <label class="mdl-textfield__label">Link para Download</label>
            </div>     

            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
              <input class="mdl-textfield__input preco" type="text" pattern="\d.+?" id="preco" name="preco">
              <label class="mdl-textfield__label">Preço do Produto</label>
              <span class="mdl-textfield__error">Favor insira o preço corretamente!</span>
            </div>

            <br>


            <button class="mdl-button mdl-js-button mdl-button--raised mdl-button--accent" type="reset">Limpar</button>

            <button class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored"><i class="material-icons">send</i> Cadastrar Produto</button>


          </form>
          </div>
          <div class="mdl-cell">
            <!-- and probably also here -->
          </div>
        </div>
</div>
<%@ include file="rodape.jsp" %>