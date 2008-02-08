# $OpenBSD: Makefile,v 1.1.1.1 2008/02/08 23:25:56 espie Exp $

COMMENT =	astronomic computations as a library

CATEGORIES =	astro devel
HOMEPAGE =	http://libnova.sourceforge.net/
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=libnova/}
DISTNAME =	libnova-0.12.1

SHARED_LIBS +=	nova            0.0           # .1.0

# LGPL
PERMIT_DISTFILES_FTP =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_PACKAGE_CDROM = 		Yes

CONFIGURE_STYLE =		gnu
USE_LIBTOOL =			Yes
SEPARATE_BUILD =		simple

# cheat until we get long double trigonometry
MAKE_FLAGS = CPPFLAGS='-Dcosl=cos -Dsinl=sin -Dacosl=acos -Dasinl=asin -Datan2l=atan2'

WANTLIB += c m

.include <bsd.port.mk>
