# $OpenBSD: Makefile.inc,v 1.6 2017/11/09 12:46:36 bentley Exp $

# Requires drm(4). Big-endian (powerpc) isn't supported according to upstream.
ONLY_FOR_ARCHS =	amd64 i386

GH_ACCOUNT = 		MegaGlest
GH_TAGNAME = 		3.13.0

CATEGORIES =		games

HOMEPAGE =		https://megaglest.org/

# GPLv3 + Creative Commons CC-BY-SA
PERMIT_PACKAGE_CDROM =	Yes

MODULES +=		devel/cmake

NO_TEST = 		Yes
