local visible = true

function script.update(dt)
end

function script.drawUI()
  if not visible then return end

  ui.beginPopupModal('Bienvenue', true, ui.WindowFlags.AlwaysAutoResize)

  ui.text('Bienvenue sur le serveur !')
  ui.text('Merci de respecter les règles.')

  if ui.button('J’ai compris') then
    visible = false
    ui.closePopup()
  end

  ui.endPopup()
end
