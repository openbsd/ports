# $OpenBSD: Makefile,v 1.10 2021/02/23 19:39:25 sthen Exp $

COMMENT-main =		library for manipulating IPTC metadata
COMMENT-python =	libiptcdata Python bindings

DISTNAME =		libiptcdata-1.0.4
PKGNAME-main =		${DISTNAME}
PKGNAME-python =	py-${DISTNAME}

REVISION-main =		1
REVISION-python =	0

SHARED_LIBS =		iptcdata 	0.0 # 3.3

CATEGORIES =		graphics

HOMEPAGE =		http://libiptcdata.sourceforge.net/

# LGPL
PERMIT_PACKAGE =	Yes

cWANTLIB =		m util pthread
WANTLIB-main = 		${cWANTLIB} c iconv intl
WANTLIB-python = 	${cWANTLIB} iptcdata

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=libiptcdata/}

MODULES =		lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}
LIB_DEPENDS-python = 	graphics/libiptcdata,-main

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--enable-python
CONFIGURE_ENV += 	PYTHON_VERSION=${MODPY_VERSION} \
			LDFLAGS="-L${LOCALBASE}/lib -pthread -lm -lutil"

MULTI_PACKAGES = 	-main -python

NO_TEST =		Yes

.include <bsd.port.mk>
