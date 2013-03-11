# $OpenBSD: Makefile,v 1.17 2013/03/11 10:50:02 espie Exp $

NOT_FOR_ARCHS =	arm mips64 mips64el sparc64 hppa

COMMENT =	library for efficient computations

DISTNAME =	cln-1.3.2
SHARED_LIBS +=  cln                  1.0      # .5.2
REVISION =	0
CATEGORIES =	devel

HOMEPAGE =	http://www.ginac.de/CLN/

MAINTAINER =	Paul Irofti <pirofti@openbsd.org>

# GPL v2
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES =		${HOMEPAGE}
EXTRACT_SUFX =		.tar.bz2

WANTLIB	+=		m stdc++ gmp

LIB_DEPENDS =		devel/gmp

USE_GMAKE =		Yes
USE_LIBTOOL =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
