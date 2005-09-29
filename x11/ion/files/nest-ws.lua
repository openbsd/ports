-- $OpenBSD: nest-ws.lua,v 1.1 2005/09/29 22:19:39 pedro Exp $
-- Nest workspaces inside Frames.
-- Matthieu Moy <Matthieu.Moy@imag.fr>, February 15th 2005.
-- Public domain.

-- This defines a menu to be used as a submenu for WFrames.
-- Add the line
--       submenu("Attach",           "menuattach"),
-- to the definition defctxmenu("WFrame", { ... })

defmenu("menuattach", {
           menuentry("WIonWS",   "_:attach_new({type=\"WIonWS\"  }):goto()"),           
           menuentry("WFloatWS", "_:attach_new({type=\"WFloatWS\"}):goto()"),           
           menuentry("WPaneWS",  "_:attach_new({type=\"WPaneWS\" }):goto()"),           
        })
