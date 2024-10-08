module MoviesHelper
  def toggle_direction(column)
    if params[:sort] == column
      params[:direction] == 'asc' ? 'desc' : 'asc'
    else
      'asc'
    end
  end

  def arrow_for_column(column)
    if params[:sort] == column
      if params[:direction] == 'asc'
        '↑' # Up arrow for ascending
      else
        '↓' # Down arrow for descending
      end
    end
  end
end
