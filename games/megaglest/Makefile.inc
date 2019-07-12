# $OpenBSD: Makefile.inc,v 1.7 2019/07/12 20:46:21 sthen Exp $

# Requires drm(4). Big-endian (powerpc) isn't supported according to upstream.
ONLY_FOR_ARCHS =	amd64 i386

GH_ACCOUNT = 		MegaGlest
GH_TAGNAME = 		3.13.0

CATEGORIES =		games

HOMEPAGE =		https://megaglest.org/

# GPLv3 + Creative Commons CC-BY-SA
PERMIT_PACKAGE =	Yes

MODULES +=		devel/cmake

NO_TEST = 		Yes
