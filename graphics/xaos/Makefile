# $OpenBSD: Makefile,v 1.11 2019/07/12 20:47:11 sthen Exp $

COMMENT =		interactive fractal zoomer and morpher

VERSION =		3.6
DISTNAME =		xaos-${VERSION}
REVISION =		3

CATEGORIES =		graphics

HOMEPAGE =		http://matek.hu/xaos/doku.php

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB =  X11 Xext c gsl gslcblas iconv intl m png z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=xaos/XaoS/${VERSION}/}

BUILD_DEPENDS =		devel/gettext,-tools

LIB_DEPENDS =		graphics/png \
			devel/gettext,-runtime \
			devel/gsl

USE_GMAKE =		Yes

NO_TEST=		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--with-gsl=yes \
			--with-libiconv-prefix="${LOCALBASE}" \
			--with-libintl-prefix="${LOCALBASE}"
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

pre-configure:
	perl -pi -e 's#/usr(/share/locale)#${PREFIX}\1#g' \
		${WRKSRC}/configure ${WRKSRC}/src/ui/ui.c

.include <bsd.port.mk>
