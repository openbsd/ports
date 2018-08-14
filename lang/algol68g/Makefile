# $OpenBSD: Makefile,v 1.2 2018/08/14 00:50:17 bcallah Exp $

COMMENT =	Algol 68 Genie compiler-interpreter
DISTNAME =	algol68g-2.8.5
CATEGORIES =	lang

HOMEPAGE =	https://jmvdveer.home.xs4all.nl/algol.html
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://jmvdveer.home.xs4all.nl/

WANTLIB += c curses gsl gslcblas m pthread readline

LIB_DEPENDS =	devel/gsl

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--disable-plotutils --disable-postgresql
CONFIGURE_ENV =		CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include" \
			LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"

NO_TEST =	Yes

.include <bsd.port.mk>
