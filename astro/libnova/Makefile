# $OpenBSD: Makefile,v 1.10 2014/11/18 10:17:18 brad Exp $

COMMENT =	astronomic computations as a library

DISTNAME =	libnova-0.15.0
REVISION =	0
SHARED_LIBS +=	nova	1.1	# unknown
CATEGORIES =	astro devel

HOMEPAGE =	http://libnova.sourceforge.net/

# LGPLv2
PERMIT_PACKAGE_CDROM = 		Yes

WANTLIB +=		c m

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=libnova/}

SEPARATE_BUILD =	Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	${CONFIGURE_SHARED}
CONFIGURE_ENV =		CPPFLAGS="${CFLAGS}"

.include <bsd.port.mk>
