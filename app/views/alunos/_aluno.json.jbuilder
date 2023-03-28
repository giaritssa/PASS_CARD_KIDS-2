json.extract! aluno, :id, :nome, :serie, :turno, :ra, :created_at, :updated_at
json.url aluno_url(aluno, format: :json)
