# $OpenBSD: Makefile,v 1.11 2010/11/15 19:45:57 espie Exp $

NOT_FOR_ARCHS =	arm mips64 mips64el sparc64

COMMENT =	library for efficient computations 

DISTNAME =	cln-1.3.1
REVISION =	0
SHARED_LIBS +=  cln                  1.0      # .5.2
CATEGORIES =	devel

HOMEPAGE =	http://www.ginac.de/CLN/

MAINTAINER =	Paul Irofti <pirofti@openbsd.org>

# GPL v2
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MASTER_SITES =		${HOMEPAGE}
EXTRACT_SUFX =		.tar.bz2

WANTLIB	+=		c m stdc++ gmp

LIB_DEPENDS =		devel/gmp 

USE_GMAKE =		Yes
USE_LIBTOOL =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
