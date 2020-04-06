# $OpenBSD: Makefile,v 1.30 2020/04/06 08:48:06 pirofti Exp $

NOT_FOR_ARCHS =	arm mips64 mips64el sparc64 hppa

COMMENT =	library for efficient computations

DISTNAME =	cln-1.3.4
REVISION =	5
SHARED_LIBS +=  cln                  3.0      # .6.4
CATEGORIES =	devel

HOMEPAGE =	http://www.ginac.de/CLN/

MAINTAINER =	Paul Irofti <paul@irofti.net>

# GPL v2
PERMIT_PACKAGE =		Yes

MASTER_SITES =		${HOMEPAGE}
EXTRACT_SUFX =		.tar.bz2

WANTLIB	+=		m ${COMPILER_LIBCXX} gmp

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS =		devel/gmp

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
