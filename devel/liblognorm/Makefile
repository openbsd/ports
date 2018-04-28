# $OpenBSD: Makefile,v 1.2 2018/04/28 13:04:21 jasper Exp $

COMMENT =	fast-samples based normalization library

DISTNAME =	liblognorm-2.0.5

SHARED_LIBS +=	lognorm		0.0 # 0.0

CATEGORIES =	devel

HOMEPAGE =	http://www.liblognorm.com/

# LGPLv2.1+ + Apache License 2.0
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c estr fastjson

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15

BUILD_DEPENDS =	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS} \
		devel/libtool

LIB_DEPENDS =	devel/libestr \
		devel/libfastjson

MASTER_SITES =	http://www.liblognorm.com/files/download/

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include"

post-patch:
	cd ${WRKSRC}; ${SETENV} ${MAKE_ENV} \
	    AUTOCONF_VERSION=${AUTOCONF_VERSION} \
	    AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
	    autoreconf -vfi

.include <bsd.port.mk>
