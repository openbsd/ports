/*
 *  Replace the configure-generated nmap.h so that we can convince
 *  nmap_wrapper.nes to build regardless of nmap's presence.
 *
 *  Matt Behrens <matt@openbsd.org>
 */

#ifndef NMAP_H__
#define NMAP_H__

#define NMAP "/usr/local/bin/nmap"
#define NMAP_VERSION "2.3"
#define NMAP_MAJOR 2
#define NMAP_MINOR 3
#define NMAP_BETA 

#endif
