# $OpenBSD: Makefile,v 1.6 2018/04/27 15:19:33 jasper Exp $

COMMENT =		extractor and converter for .ico and .cur files

DISTNAME =		icoutils-0.32.3

CATEGORIES =		graphics

HOMEPAGE =		https://www.nongnu.org/icoutils/

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =  c iconv intl m png z

MASTER_SITES =		http://savannah.nongnu.org/download/icoutils/

EXTRACT_SUFX =		.tar.bz2

LIB_DEPENDS =		devel/gettext \
			graphics/png

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
