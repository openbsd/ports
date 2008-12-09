# $OpenBSD: Makefile,v 1.2 2008/12/09 23:28:12 martynas Exp $

COMMENT =	astronomic computations as a library

CATEGORIES =	astro devel
HOMEPAGE =	http://libnova.sourceforge.net/
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=libnova/}
DISTNAME =	libnova-0.12.1
PKGNAME =	${DISTNAME}p0

SHARED_LIBS +=	nova            0.0           # .1.0

# LGPL
PERMIT_DISTFILES_FTP =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_PACKAGE_CDROM = 		Yes

CONFIGURE_STYLE =		gnu
USE_LIBTOOL =			Yes
SEPARATE_BUILD =		simple

WANTLIB += c m

.include <bsd.port.mk>
