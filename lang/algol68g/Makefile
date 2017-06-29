# $OpenBSD: Makefile,v 1.1.1.1 2017/06/29 15:56:14 bcallah Exp $

COMMENT =	Algol 68 Genie compiler-interpreter
DISTNAME =	algol68g-2.8.4
CATEGORIES =	lang

HOMEPAGE =	https://jmvdveer.home.xs4all.nl/algol.html
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://jmvdveer.home.xs4all.nl/

WANTLIB += c gsl gslcblas m ncurses pthread readline

LIB_DEPENDS =	devel/gsl

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--disable-plotutils --disable-postgresql
CONFIGURE_ENV =		CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include" \
			LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"

.include <bsd.port.mk>
