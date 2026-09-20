local popupImage =
  'https://raw.githubusercontent.com/Ocap44/assetto-popup/main/welcome_popup.png'

local visible = true

function script.drawUI()
  if not visible then
    return
  end

  local screen = ui.windowSize()

  -- Taille originale de ton image : 369 × 512
  local imageWidth = 369
  local imageHeight = 512

  -- Réduction automatique si l’écran est trop petit
  local scale = math.min(
    1,
    (screen.x - 40) / imageWidth,
    (screen.y - 40) / imageHeight
  )

  local width = imageWidth * scale
  local height = imageHeight * scale

  local x = (screen.x - width) / 2
  local y = (screen.y - height) / 2

  -- Fond sombre derrière le popup
  ui.drawRectFilled(
    vec2(0, 0),
    screen,
    rgbm(0, 0, 0, 0.70)
  )

  -- Fenêtre sans bordure
  ui.beginTransparentWindow(
    'FAST_FRENCHIES_WELCOME',
    vec2(x, y),
    vec2(width, height)
  )

  -- Affichage exact de ton image
  ui.drawImage(
    popupImage,
    vec2(0, 0),
    vec2(width, height)
  )

  ui.endTransparentWindow()

  -- Zone invisible cliquable sur le bouton “J’ai compris”
  local buttonX = x + 70 * scale
  local buttonY = y + 350 * scale
  local buttonW = 220 * scale
  local buttonH = 55 * scale

  ui.setCursor(vec2(buttonX, buttonY))

  if ui.invisibleButton('WELCOME_CLOSE', vec2(buttonW, buttonH)) then
    visible = false
  end
end
