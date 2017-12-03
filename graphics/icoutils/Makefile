# $OpenBSD: Makefile,v 1.5 2017/12/03 12:51:35 ajacoutot Exp $

COMMENT =		extractor and converter for .ico and .cur files

DISTNAME =		icoutils-0.32.2

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
