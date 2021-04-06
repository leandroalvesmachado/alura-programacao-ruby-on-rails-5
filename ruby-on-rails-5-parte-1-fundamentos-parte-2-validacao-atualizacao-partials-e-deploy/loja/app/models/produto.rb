class Produto < ApplicationRecord

    # por padrão o belongs_to é validado
    belongs_to :departamento, optional: true

    validates :preco, presence: true
    validates :nome, length: { minimum: 4 }
end
