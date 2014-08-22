# $OpenBSD: Makefile,v 1.1.1.1 2014/08/22 22:59:05 bentley Exp $

COMMENT =		extractor and converter for .ico and .cur files

DISTNAME =		icoutils-0.31.0

CATEGORIES =		graphics

HOMEPAGE =		https://www.nongnu.org/icoutils/

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m png z

MASTER_SITES =		http://savannah.nongnu.org/download/icoutils/

EXTRACT_SUFX =		.tar.bz2

MODULES =		devel/gettext
LIB_DEPENDS =		graphics/png

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
