# $OpenBSD: Makefile.inc,v 1.3 2013/03/11 12:27:54 sthen Exp $ 

# Requires drm(4). Big-endian (powerpc) isn't supported according to upstream.
ONLY_FOR_ARCHS =	amd64 i386
V = 			3.7.1
CATEGORIES =		games
HOMEPAGE =		http://megaglest.org/

# GPLv3 + Creative Commons CC-BY-SA
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=megaglest/}
EXTRACT_SUFX =		.tar.xz

MODULES +=		devel/cmake

NO_TEST = 		yes
