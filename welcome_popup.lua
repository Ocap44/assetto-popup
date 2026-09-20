local visible = true

function script.drawUI()
  if not visible then return end

  ui.beginTransparentWindow(
    'welcome_popup',
    vec2(500, 250),
    vec2(450, 180)
  )

  ui.text('BIENVENUE SUR LE SERVEUR !')
  ui.text('Merci de respecter les règles.')

  if ui.button('J’ai compris') then
    visible = false
  end

  ui.endTransparentWindow()
end
