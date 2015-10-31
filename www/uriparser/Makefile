# $OpenBSD: Makefile,v 1.5 2015/10/31 23:02:07 ajacoutot Exp $

COMMENT =		URI parsing library

DISTNAME =		uriparser-0.8.4

SHARED_LIBS +=  uriparser                 0.1 # 1.19

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
