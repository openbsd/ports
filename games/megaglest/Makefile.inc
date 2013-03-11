# $OpenBSD: Makefile.inc,v 1.2 2013/03/11 11:07:39 espie Exp $ 

# Requires drm(4). Big-endian (powerpc) isn't supported according to upstream.
ONLY_FOR_ARCHS =	amd64 i386
V = 			3.7.1
CATEGORIES =		games
HOMEPAGE =		http://megaglest.org/

# GPLv3 + Creative Commons CC-BY-SA
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=megaglest/}
EXTRACT_SUFX =		.tar.xz

MODULES +=		devel/cmake

NO_TEST = 		yes
