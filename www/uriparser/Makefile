# $OpenBSD: Makefile,v 1.3 2015/05/02 17:18:30 ajacoutot Exp $

COMMENT =		URI parsing library

DISTNAME =		uriparser-0.8.2

SHARED_LIBS +=  uriparser                 0.1 # 1.17

CATEGORIES =		www

HOMEPAGE =		http://uriparser.sourceforge.net/

# BSD 3-clause
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=uriparser/}
EXTRACT_SUFX =		.tar.bz2

# cpptest is only used during tests but configure requires it
BUILD_DEPENDS =		devel/cpptest
TEST_DEPENDS =		devel/cpptest


CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--disable-doc
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>
