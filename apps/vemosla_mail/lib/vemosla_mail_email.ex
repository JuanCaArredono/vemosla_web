defmodule VemoslaMail.Email do
  import Bamboo.Email

  def confirmation_instructions(user, url) do
    config = Application.get_env(:vemosla_mail, :email, [])
    new_email()
    |> from(config[:from])
    |> to(user.email)
    |> subject("[Vemosla] Instrucciones de confirmación")
    |> text_body("""
    Hola,
    Puedes confirmar la cuenta visitando la siguiente URL:
    #{url}
    Si no creaste una cuenta en vemosla.com, por favor,
    ignora este email.
    El equipo de Vemosla!
    """)
    end

end
