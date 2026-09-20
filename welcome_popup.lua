local visible = true
local ouvert = false

function script.update(dt)
  if visible and not ouvert then
    ui.openPopup('Bienvenue')
    ouvert = true
  end
end

function script.drawUI()
  if not visible then return end

  if ui.beginPopupModal(
    'Bienvenue',
    true,
    ui.WindowFlags.AlwaysAutoResize
  ) then

    ui.text('Bienvenue sur le serveur !')
    ui.text('Merci de respecter les règles.')

    if ui.button("J'ai compris") then
      visible = false
      ui.closePopup()
    end

    ui.endPopup()
  end
end
