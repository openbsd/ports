# $OpenBSD: Makefile,v 1.7 2014/04/13 01:01:39 naddy Exp $
# Original from: Kyle Wheeler <kyle@memoryhole.net>

COMMENT =		natural-expression command-line calculator

DISTNAME =		wcalc-2.4
CATEGORIES =		math
HOMEPAGE =		http://w-calc.sourceforge.net/
MAINTAINER =		Amarendra Godbole <amarendra.godbole@gmail.com>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=w-calc/}

WANTLIB =		c m readline termcap gmp>=7 mpfr>=0.2
LIB_DEPENDS =		devel/gmp devel/mpfr

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ENV +=	LDFLAGS="-L${LOCALBASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>
