defmodule HighSchoolSweetheart do
  def first_letter(name) do
    # Please implement the first_letter/1 function
    name
    |>String.trim()
    |>String.first()    
  end

  def initial(name) do
    # Please implement the initial/1 function
    first_letter(name) <> "."
    |>String.upcase()
  end

  def initials(full_name) do
    # Please implement the initials/1 function
    first = 
      full_name
      |>String.split()
      |>List.first()
      |>String.first()
      |>String.trim()
      |>initial

    last =
      full_name
      |>String.split()
      |>List.last()
      |>String.first()
      |>String.trim()
      |>initial
    
    first <> " " <> last
  end

  def pair(full_name1, full_name2) do
    # Please implement the pair/2 function
    # "hello #{name}"
    initials1 = initials(full_name1)
    initials2 = initials(full_name2)
                """
            ******       ******
          **      **   **      **
        **         ** **         **
       **            *            **
       **                         **
       **     #{initials1}  +  #{initials2}     **
        **                       **
          **                   **
            **               **
              **           **
                **       **
                  **   **
                    ***
                     *
       """
  end
end
