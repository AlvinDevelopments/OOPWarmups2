# Controls the game play
Class: TicTacToe
  play
  check_game_over
  check_victory
  check_draw
  switch_players


# Manages all player-related functionality
Class: Player
  name
  name=(new_value)
  piece
  piece=(new_value)
  get_coordinates
  ask_for_coordinates
  validate_coordinates_format(coords)


# Maintains game board state
Class: Board
  render
  add_piece(coords, piece)
  piece_location_valid?(coords)
  within_valid_coordinates?(coords)
  coordinates_available?(coords)
  winning_combination?(piece)
  winning_diagonal?(piece)
  winning_vertical?(piece)
  winning_horizontal?(piece)
  diagonals
  verticals
  horizontals
  full?
