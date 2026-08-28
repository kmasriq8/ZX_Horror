fx_version 'cerulean'
game 'gta5'

author 'ZX Horror Development Team'
description 'ZX Horror - Survival Horror System for FiveM QBCore'
version '1.0.0'

shared_scripts {
    '@qb-core/shared/locale.lua',
    'shared/utils.lua',
    'shared/locales/ar.lua',
}

client_scripts {
    'client/main.lua',
    'client/player.lua',
    'client/missions.lua',
    'client/puzzles.lua',
    'client/doors.lua',
    'client/keys.lua',
    'client/enemies.lua',
    'client/zones.lua',
    'client/audio.lua',
    'client/fear.lua',
    'client/events.lua',
    'client/npc.lua',
    'client/evidence.lua',
    'client/ui.lua',
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/main.lua',
    'server/player.lua',
    'server/missions.lua',
    'server/puzzles.lua',
    'server/doors.lua',
    'server/database.lua',
    'server/rewards.lua',
    'server/admin.lua',
}

ui_page 'html/index.html'

files {
    'html/index.html',
    'html/style.css',
    'html/app.js',
    'html/assets/fonts/*.ttf',
    'html/assets/fonts/*.woff',
    'html/assets/images/*.png',
    'html/assets/images/*.jpg',
    'html/assets/sounds/*.ogg',
    'html/assets/music/*.ogg',
}

escrow_ignore {
    'config.lua',
    'shared/**',
    'client/**',
    'server/**',
    'html/**',
    'sql/**',
    'README.md',
}

dependencies {
    'qb-core',
    'oxmysql',
}
