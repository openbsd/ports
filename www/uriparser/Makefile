# $OpenBSD: Makefile,v 1.7 2018/02/09 00:18:20 ajacoutot Exp $

COMMENT =		URI parsing library

DISTNAME =		uriparser-0.8.5
REVISION =		0

SHARED_LIBS +=  uriparser                 1.0 # 1.21

CATEGORIES =		www

HOMEPAGE =		https://uriparser.github.io/

# BSD 3-clause
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=uriparser/}
EXTRACT_SUFX =		.tar.bz2

# cpptest is only used during tests but configure requires it
BUILD_DEPENDS =		devel/cpptest
TEST_DEPENDS =		devel/cpptest

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--disable-doc
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>
