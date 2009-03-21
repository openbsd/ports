# $OpenBSD: Makefile,v 1.3 2009/03/21 08:13:03 ajacoutot Exp $

COMMENT =	astronomic computations as a library

DISTNAME =	libnova-0.12.3
SHARED_LIBS +=	nova	0.1	# .3.0
CATEGORIES =	astro devel

HOMEPAGE =	http://libnova.sourceforge.net/

# LGPLv2
PERMIT_DISTFILES_FTP =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_PACKAGE_CDROM = 		Yes

WANTLIB +=	c m

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=libnova/}

SEPARATE_BUILD =	simple
USE_LIBTOOL =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	${CONFIGURE_SHARED}
CONFIGURE_ENV =		CPPFLAGS="${CFLAGS}"

.include <bsd.port.mk>
