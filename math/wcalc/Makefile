# $OpenBSD: Makefile,v 1.1.1.1 2009/02/03 22:46:14 martynas Exp $
# Original from: Kyle Wheeler <kyle@memoryhole.net>

COMMENT =		natural-expression command-line calculator

DISTNAME =		wcalc-2.4
CATEGORIES =		math
HOMEPAGE =		http://w-calc.sourceforge.net/
MAINTAINER =		Amarendra Godbole <amarendra.godbole@gmail.com>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=w-calc/}

WANTLIB =		c m readline termcap
LIB_DEPENDS =		gmp.>=7::devel/gmp mpfr.>=0.2::devel/mpfr

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ENV +=	LDFLAGS="-L${LOCALBASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>
