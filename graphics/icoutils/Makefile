# $OpenBSD: Makefile,v 1.4 2017/11/21 00:13:01 naddy Exp $

COMMENT =		extractor and converter for .ico and .cur files

DISTNAME =		icoutils-0.31.3
REVISION =		0

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
