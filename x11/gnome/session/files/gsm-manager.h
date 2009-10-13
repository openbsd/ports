/* -*- Mode: C; tab-width: 8; indent-tabs-mode: nil; c-basic-offset: 8 -*-
 *
 * Copyright (C) 2008 William Jon McCann <jmccann@redhat.com>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.
 *
 */


#ifndef __GSM_MANAGER_H
#define __GSM_MANAGER_H

#include <glib-object.h>
#include <dbus/dbus-glib.h>

#include "gsm-store.h"

G_BEGIN_DECLS

#define GSM_TYPE_MANAGER         (gsm_manager_get_type ())
#define GSM_MANAGER(o)           (G_TYPE_CHECK_INSTANCE_CAST ((o), GSM_TYPE_MANAGER, GsmManager))
#define GSM_MANAGER_CLASS(k)     (G_TYPE_CHECK_CLASS_CAST((k), GSM_TYPE_MANAGER, GsmManagerClass))
#define GSM_IS_MANAGER(o)        (G_TYPE_CHECK_INSTANCE_TYPE ((o), GSM_TYPE_MANAGER))
#define GSM_IS_MANAGER_CLASS(k)  (G_TYPE_CHECK_CLASS_TYPE ((k), GSM_TYPE_MANAGER))
#define GSM_MANAGER_GET_CLASS(o) (G_TYPE_INSTANCE_GET_CLASS ((o), GSM_TYPE_MANAGER, GsmManagerClass))

typedef struct GsmManagerPrivate GsmManagerPrivate;

typedef struct
{
        GObject            parent;
        GsmManagerPrivate *priv;
} GsmManager;

typedef struct
{
        GObjectClass   parent_class;

        void          (* session_running)     (GsmManager      *manager);
        void          (* session_over)        (GsmManager      *manager);
        void          (* session_over_notice) (GsmManager      *manager);

        void          (* phase_changed)       (GsmManager      *manager,
                                               const char      *phase);

        void          (* client_added)        (GsmManager      *manager,
                                               const char      *id);
        void          (* client_removed)      (GsmManager      *manager,
                                               const char      *id);
        void          (* inhibitor_added)     (GsmManager      *manager,
                                               const char      *id);
        void          (* inhibitor_removed)   (GsmManager      *manager,
                                               const char      *id);
} GsmManagerClass;

typedef enum {
        /* gsm's own startup/initialization phase */
        GSM_MANAGER_PHASE_STARTUP = 0,
        /* xrandr setup, gnome-settings-daemon, etc */
        GSM_MANAGER_PHASE_INITIALIZATION,
        /* window/compositing managers */
        GSM_MANAGER_PHASE_WINDOW_MANAGER,
        /* apps that will create _NET_WM_WINDOW_TYPE_PANEL windows */
        GSM_MANAGER_PHASE_PANEL,
        /* apps that will create _NET_WM_WINDOW_TYPE_DESKTOP windows */
        GSM_MANAGER_PHASE_DESKTOP,
        /* everything else */
        GSM_MANAGER_PHASE_APPLICATION,
        /* done launching */
        GSM_MANAGER_PHASE_RUNNING,
        /* shutting down */
        GSM_MANAGER_PHASE_QUERY_END_SESSION,
        GSM_MANAGER_PHASE_END_SESSION,
        GSM_MANAGER_PHASE_EXIT
} GsmManagerPhase;

typedef enum
{
        GSM_MANAGER_ERROR_GENERAL = 0,
        GSM_MANAGER_ERROR_NOT_IN_INITIALIZATION,
        GSM_MANAGER_ERROR_NOT_IN_RUNNING,
        GSM_MANAGER_ERROR_ALREADY_REGISTERED,
        GSM_MANAGER_ERROR_NOT_REGISTERED,
        GSM_MANAGER_ERROR_INVALID_OPTION,
        GSM_MANAGER_NUM_ERRORS
} GsmManagerError;

#define GSM_MANAGER_ERROR gsm_manager_error_quark ()

typedef enum {
        GSM_MANAGER_LOGOUT_MODE_NORMAL = 0,
        GSM_MANAGER_LOGOUT_MODE_NO_CONFIRMATION,
        GSM_MANAGER_LOGOUT_MODE_FORCE
} GsmManagerLogoutMode;

GType               gsm_manager_error_get_type                 (void);
#define GSM_MANAGER_TYPE_ERROR (gsm_manager_error_get_type ())

GQuark              gsm_manager_error_quark                    (void);
GType               gsm_manager_get_type                       (void);

GsmManager *        gsm_manager_new                            (GsmStore       *client_store,
                                                                gboolean        failsafe);

gboolean            gsm_manager_add_autostart_app              (GsmManager     *manager,
                                                                const char     *path,
                                                                const char     *provides);
gboolean            gsm_manager_add_autostart_apps_from_dir    (GsmManager     *manager,
                                                                const char     *path);
gboolean            gsm_manager_add_legacy_session_apps        (GsmManager     *manager,
                                                                const char     *path);

void                gsm_manager_start                          (GsmManager     *manager);


/* exported methods */

gboolean            gsm_manager_register_client                (GsmManager            *manager,
                                                                const char            *app_id,
                                                                const char            *client_startup_id,
                                                                DBusGMethodInvocation *context);
gboolean            gsm_manager_unregister_client              (GsmManager            *manager,
                                                                const char            *session_client_id,
                                                                DBusGMethodInvocation *context);

gboolean            gsm_manager_inhibit                        (GsmManager            *manager,
                                                                const char            *app_id,
                                                                guint                  toplevel_xid,
                                                                const char            *reason,
                                                                guint                  flags,
                                                                DBusGMethodInvocation *context);
gboolean            gsm_manager_uninhibit                      (GsmManager            *manager,
                                                                guint                  inhibit_cookie,
                                                                DBusGMethodInvocation *context);
gboolean            gsm_manager_is_inhibited                   (GsmManager            *manager,
                                                                guint                  flags,
                                                                gboolean              *is_inhibited,
                                                                GError                *error);

gboolean            gsm_manager_shutdown                       (GsmManager     *manager,
                                                                GError        **error);

gboolean            gsm_manager_can_shutdown                   (GsmManager     *manager,
                                                                gboolean       *shutdown_available,
                                                                GError        **error);
gboolean            gsm_manager_logout                         (GsmManager     *manager,
                                                                guint           logout_mode,
                                                                GError        **error);

gboolean            gsm_manager_setenv                         (GsmManager     *manager,
                                                                const char     *variable,
                                                                const char     *value,
                                                                GError        **error);
gboolean            gsm_manager_initialization_error           (GsmManager     *manager,
                                                                const char     *message,
                                                                gboolean        fatal,
                                                                GError        **error);

gboolean            gsm_manager_get_clients                    (GsmManager     *manager,
                                                                GPtrArray     **clients,
                                                                GError        **error);
gboolean            gsm_manager_get_inhibitors                 (GsmManager     *manager,
                                                                GPtrArray     **inhibitors,
                                                                GError        **error);
gboolean            gsm_manager_is_autostart_condition_handled (GsmManager     *manager,
                                                                const char     *condition,
                                                                gboolean       *handled,
                                                                GError        **error);
gboolean            gsm_manager_set_phase                      (GsmManager     *manager,
                                                                GsmManagerPhase phase);

G_END_DECLS

#endif /* __GSM_MANAGER_H */
