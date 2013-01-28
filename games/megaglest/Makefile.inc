# $OpenBSD: Makefile.inc,v 1.1.1.1 2013/01/28 13:58:49 stsp Exp $ 

# Requires drm(4). Big-endian (powerpc) isn't supported according to upstream.
ONLY_FOR_ARCHS =	amd64 i386
V = 			3.7.1
CATEGORIES =		games
HOMEPAGE =		http://megaglest.org/

# GPLv3 + Creative Commons CC-BY-SA
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=megaglest/}
EXTRACT_SUFX =		.tar.xz

MODULES +=		devel/cmake

NO_REGRESS = 		yes
