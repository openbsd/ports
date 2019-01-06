# $OpenBSD: Makefile,v 1.11 2019/01/06 09:47:39 ajacoutot Exp $

COMMENT =		URI parsing library

DISTNAME =		uriparser-0.9.1
WRKDIST =		${WRKDIR}/uriparser-${DISTNAME}

SHARED_LIBS +=  uriparser                 2.0 # 1.23

CATEGORIES =		www

HOMEPAGE =		https://uriparser.github.io/

# BSD 3-clause
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

MASTER_SITES =		https://github.com/uriparser/uriparser/archive/

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--disable-doc
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include"

# requires Google test (gtest)
CONFIGURE_ARGS +=	--disable-test

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15
BUILD_DEPENDS +=	${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/libtool

pre-configure:
	cd ${WRKSRC} && env -i ${AUTOCONF_ENV} autoreconf -fi

.include <bsd.port.mk>
