/* $OpenBSD: nmap.h,v 1.3 2002/05/25 10:38:58 reinhard Exp $
 *
 *  Replace the configure-generated nmap.h so that we can convince
 *  nmap_wrapper.nes to build regardless of nmap's presence.
 *
 *  Matt Behrens <matt@openbsd.org>
 */

#ifndef NMAP_H__
#define NMAP_H__

#define NMAP "@@PREFIX@@/bin/nmap"
#define NMAP_VERSION "2.3"
#define NMAP_MAJOR 2
#define NMAP_MINOR 3
#define NMAP_BETA

#endif
