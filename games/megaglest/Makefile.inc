# $OpenBSD: Makefile.inc,v 1.4 2015/04/06 12:49:52 stsp Exp $ 

# Requires drm(4). Big-endian (powerpc) isn't supported according to upstream.
ONLY_FOR_ARCHS =	amd64 i386
V = 			3.11.1
CATEGORIES =		games
HOMEPAGE =		http://megaglest.org/

# GPLv3 + Creative Commons CC-BY-SA
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://github.com/MegaGlest/megaglest-source/releases/download/${V}/
EXTRACT_SUFX =		.tar.xz

MODULES +=		devel/cmake

NO_TEST = 		yes
