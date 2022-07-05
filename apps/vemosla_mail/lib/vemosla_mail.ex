defmodule VemoslaMail do
  def deliver_confirmation_instructions(user, url) do
    VemoslaMail.Email.confirmation_instructions(user, url)
    |> VemoslaMail.Mailer.deliver_now()
    |> case do
      %Bamboo.Email{text_body: body} ->
      {:ok, %{to: user.email, body: body}}
      error ->
        error
      end
   end

end
