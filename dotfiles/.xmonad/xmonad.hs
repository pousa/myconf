import XMonad
import XMonad.Config.Gnome
import XMonad.Hooks.ManageDocks


main = xmonad gnomeConfig
       { modMask = mod4Mask
       , layoutHook = avoidStruts $ layoutHook gnomeConfig
}
