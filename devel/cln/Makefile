# $OpenBSD: Makefile,v 1.21 2017/04/10 11:45:25 sthen Exp $

NOT_FOR_ARCHS =	arm mips64 mips64el sparc64 hppa

COMMENT =	library for efficient computations

DISTNAME =	cln-1.3.4
SHARED_LIBS +=  cln                  3.0      # .6.4
CATEGORIES =	devel

HOMEPAGE =	http://www.ginac.de/CLN/

MAINTAINER =	Paul Irofti <pirofti@openbsd.org>

# GPL v2
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES =		${HOMEPAGE}
EXTRACT_SUFX =		.tar.bz2

WANTLIB	+=		m ${LIBCXX} gmp

LIB_DEPENDS =		devel/gmp

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
