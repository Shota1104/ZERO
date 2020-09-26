class Category < ActiveHash::Base
    self.data = [
      { id: 1, name: '--' },
      { id: 2, name: '音楽' },
      { id: 3, name: '料理' },
      { id: 4, name: 'ビジネス' },
      { id: 5, name: 'エンタメ' },
      { id: 6, name: 'スポーツ' },
      { id: 7, name: 'ゲーム' },
      { id: 8, name: 'vlog' }
    ]
end
