/* im_sndio.h
 * - read pcm data from sndio devices
 *
 * $Id: im_sndio.h,v 1.1 2010/04/23 05:54:26 jakemsr Exp $
 *
 * by Jacob Meuser <jakemsr@sdf.lonestar.org>, based
 * on im_sun.c which is...
 * by Ciaran Anscomb <ciarana@rd.bbc.co.uk>, based
 * on im_oss.c which is...
 * Copyright (c) 2001 Michael Smith <msmith@labyrinth.net.au>
 *
 * This program is distributed under the terms of the GNU General
 * Public License, version 2. You may use, modify, and redistribute
 * it under the terms of this license. A copy should be included
 * with this source.
 */

#ifndef __IM_SNDIO_H__
#define __IM_SNDIO_H__

#include <sndio.h>
#include "inputmodule.h"
#include "thread/thread.h"
#include <ogg/ogg.h>

typedef struct
{
    struct sio_hdl *hdl;
    struct sio_par par;
    char **metadata;
    int newtrack;
    mutex_t metadatalock;
} im_sndio_state;

input_module_t *sndio_open_module(module_param_t *params);

#endif  /* __IM_SNDIO_H__ */
