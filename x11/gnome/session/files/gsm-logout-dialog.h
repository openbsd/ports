/* -*- Mode: C; tab-width: 8; indent-tabs-mode: nil; c-basic-offset: 8 -*-
 *
 * Copyright (C) 2006 Vincent Untz
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License as
 * published by the Free Software Foundation; either version 2 of the
 * License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA
 * 02111-1307, USA.
 *
 * Authors:
 *	Vincent Untz <vuntz@gnome.org>
 */

#ifndef __GSM_LOGOUT_DIALOG_H__
#define __GSM_LOGOUT_DIALOG_H__

#include <gtk/gtk.h>

G_BEGIN_DECLS

enum
{
        GSM_LOGOUT_RESPONSE_LOGOUT,
        GSM_LOGOUT_RESPONSE_SWITCH_USER,
        GSM_LOGOUT_RESPONSE_SHUTDOWN,
        GSM_LOGOUT_RESPONSE_REBOOT,
        GSM_LOGOUT_RESPONSE_HIBERNATE,
        GSM_LOGOUT_RESPONSE_SLEEP
};

#define GSM_TYPE_LOGOUT_DIALOG         (gsm_logout_dialog_get_type ())
#define GSM_LOGOUT_DIALOG(o)           (G_TYPE_CHECK_INSTANCE_CAST ((o), GSM_TYPE_LOGOUT_DIALOG, GsmLogoutDialog))
#define GSM_LOGOUT_DIALOG_CLASS(k)     (G_TYPE_CHECK_CLASS_CAST((k), GSM_TYPE_LOGOUT_DIALOG, GsmLogoutDialogClass))
#define GSM_IS_LOGOUT_DIALOG(o)        (G_TYPE_CHECK_INSTANCE_TYPE ((o), GSM_TYPE_LOGOUT_DIALOG))
#define GSM_IS_LOGOUT_DIALOG_CLASS(k)  (G_TYPE_CHECK_CLASS_TYPE ((k), GSM_TYPE_LOGOUT_DIALOG))
#define GSM_LOGOUT_DIALOG_GET_CLASS(o) (G_TYPE_INSTANCE_GET_CLASS ((o), GSM_TYPE_LOGOUT_DIALOG, GsmLogoutDialogClass))

typedef struct _GsmLogoutDialog         GsmLogoutDialog;
typedef struct _GsmLogoutDialogClass    GsmLogoutDialogClass;
typedef struct _GsmLogoutDialogPrivate  GsmLogoutDialogPrivate;

struct _GsmLogoutDialog
{
        GtkMessageDialog        parent;

        GsmLogoutDialogPrivate *priv;
};

struct _GsmLogoutDialogClass
{
        GtkMessageDialogClass  parent_class;
};

GType        gsm_logout_dialog_get_type   (void) G_GNUC_CONST;

GtkWidget   *gsm_get_logout_dialog        (GdkScreen           *screen,
                                           guint32              activate_time);
GtkWidget   *gsm_get_shutdown_dialog      (GdkScreen           *screen,
                                           guint32              activate_time);

G_END_DECLS

#endif /* __GSM_LOGOUT_DIALOG_H__ */
