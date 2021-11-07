# $OpenBSD: Makefile,v 1.4 2021/11/07 20:33:01 bcallah Exp $

COMMENT =	Algol 68 Genie compiler-interpreter
DISTNAME =	algol68g-2.8.5
REVISION =	0
CATEGORIES =	lang

HOMEPAGE =	https://jmvdveer.home.xs4all.nl/algol.html
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://jmvdveer.home.xs4all.nl/

WANTLIB += c curses gsl gslcblas m pthread readline

LIB_DEPENDS =	devel/gsl

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--disable-plotutils --disable-postgresql
CONFIGURE_ENV =		CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include" \
			LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"

NO_TEST =	Yes

.include <bsd.port.mk>
