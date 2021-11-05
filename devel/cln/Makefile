# $OpenBSD: Makefile,v 1.31 2021/11/05 18:34:17 jca Exp $

NOT_FOR_ARCHS =	arm mips64 mips64el hppa

COMMENT =	library for efficient computations

DISTNAME =	cln-1.3.6
SHARED_LIBS +=  cln                  4.0      # .6.6
CATEGORIES =	devel

HOMEPAGE =	https://www.ginac.de/CLN/

MAINTAINER =	Paul Irofti <paul@irofti.net>

# GPL v2
PERMIT_PACKAGE =		Yes

MASTER_SITES =		${HOMEPAGE}
EXTRACT_SUFX =		.tar.bz2

WANTLIB	+=		m ${COMPILER_LIBCXX} gmp

COMPILER =		base-clang ports-gcc

LIB_DEPENDS =		devel/gmp

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
