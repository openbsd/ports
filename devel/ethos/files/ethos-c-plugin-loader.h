/* ethos-c-plugin-loader.h
 *
 * Copyright (C) 2009 Christian Hergert <chris@dronelabs.com>
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Library General Public
 * License as published by the Free Software Foundation; either
 * version 2 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Library General Public License for more details.
 *
 * You should have received a copy of the GNU Library General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston MA 
 * 02110-1301 USA
 */

#ifndef __ETHOS_C_PLUGIN_LOADER_H__
#define __ETHOS_C_PLUGIN_LOADER_H__

#include <glib-object.h>

G_BEGIN_DECLS

#define ETHOS_TYPE_C_PLUGIN_LOADER		(ethos_c_plugin_loader_get_type ())
#define ETHOS_C_PLUGIN_LOADER(obj)		(G_TYPE_CHECK_INSTANCE_CAST ((obj), ETHOS_TYPE_C_PLUGIN_LOADER, EthosCPluginLoader))
#define ETHOS_C_PLUGIN_LOADER_CONST(obj)	(G_TYPE_CHECK_INSTANCE_CAST ((obj), ETHOS_TYPE_C_PLUGIN_LOADER, EthosCPluginLoader const))
#define ETHOS_C_PLUGIN_LOADER_CLASS(klass)	(G_TYPE_CHECK_CLASS_CAST ((klass),  ETHOS_TYPE_C_PLUGIN_LOADER, EthosCPluginLoaderClass))
#define ETHOS_IS_C_PLUGIN_LOADER(obj)		(G_TYPE_CHECK_INSTANCE_TYPE ((obj), ETHOS_TYPE_C_PLUGIN_LOADER))
#define ETHOS_IS_C_PLUGIN_LOADER_CLASS(klass)	(G_TYPE_CHECK_CLASS_TYPE ((klass),  ETHOS_TYPE_C_PLUGIN_LOADER))
#define ETHOS_C_PLUGIN_LOADER_GET_CLASS(obj)	(G_TYPE_INSTANCE_GET_CLASS ((obj),  ETHOS_TYPE_C_PLUGIN_LOADER, EthosCPluginLoaderClass))

typedef struct _EthosCPluginLoader		EthosCPluginLoader;
typedef struct _EthosCPluginLoaderClass		EthosCPluginLoaderClass;
typedef struct _EthosCPluginLoaderPrivate	EthosCPluginLoaderPrivate;

struct _EthosCPluginLoader
{
	GObject parent;
	
	EthosCPluginLoaderPrivate *priv;
};

struct _EthosCPluginLoaderClass
{
	GObjectClass parent_class;
};

GType               ethos_c_plugin_loader_get_type (void) G_GNUC_CONST;
EthosPluginLoader*  ethos_c_plugin_loader_new      (void);

G_END_DECLS

#endif /* __ETHOS_C_PLUGIN_LOADER_H__ */
