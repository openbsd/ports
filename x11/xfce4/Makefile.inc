# $OpenBSD: Makefile.inc,v 1.10 2012/04/30 12:42:07 landry Exp $

DIST_SUBDIR=	xfce4

MAINTAINER?=	Landry Breuil <landry@openbsd.org>

SHARED_ONLY ?=	Yes
# those can't be defined in a MODULE
CONFIGURE_STYLE?=gnu
