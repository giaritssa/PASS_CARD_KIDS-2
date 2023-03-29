require "test_helper"

class ResponsavelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @responsavel = responsavels(:one)
  end

  test "should get index" do
    get responsavels_url
    assert_response :success
  end

  test "should get new" do
    get new_responsavel_url
    assert_response :success
  end

  test "should create responsavel" do
    assert_difference("Responsavel.count") do
      post responsavels_url, params: { responsavel: { aluno_id: @responsavel.aluno_id, contato: @responsavel.contato, cpf: @responsavel.cpf, nome: @responsavel.nome, status: @responsavel.status } }
    end

    assert_redirected_to responsavel_url(Responsavel.last)
  end

  test "should show responsavel" do
    get responsavel_url(@responsavel)
    assert_response :success
  end

  test "should get edit" do
    get edit_responsavel_url(@responsavel)
    assert_response :success
  end

  test "should update responsavel" do
    patch responsavel_url(@responsavel), params: { responsavel: { aluno_id: @responsavel.aluno_id, contato: @responsavel.contato, cpf: @responsavel.cpf, nome: @responsavel.nome, status: @responsavel.status } }
    assert_redirected_to responsavel_url(@responsavel)
  end

  test "should destroy responsavel" do
    assert_difference("Responsavel.count", -1) do
      delete responsavel_url(@responsavel)
    end

    assert_redirected_to responsavels_url
  end
end
