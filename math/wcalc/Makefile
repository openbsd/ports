# $OpenBSD: Makefile,v 1.11 2019/05/17 16:19:39 sthen Exp $
# Original from: Kyle Wheeler <kyle@memoryhole.net>

COMMENT =		natural-expression command-line calculator

DISTNAME =		wcalc-2.5
REVISION =		2
CATEGORIES =		math
HOMEPAGE =		http://w-calc.sourceforge.net/
MAINTAINER =		Amarendra Godbole <amarendra.godbole@gmail.com>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c curses gmp>=7 m mpfr>=0.2 readline

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=w-calc/}

LIB_DEPENDS =		devel/gmp devel/mpfr

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ENV +=	LDFLAGS="-L${LOCALBASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>
