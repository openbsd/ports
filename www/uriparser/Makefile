# $OpenBSD: Makefile,v 1.9 2018/08/20 07:15:26 ajacoutot Exp $

COMMENT =		URI parsing library

DISTNAME =		uriparser-0.8.6
WRKDIST =		${WRKDIR}/uriparser-${DISTNAME}

SHARED_LIBS +=  uriparser                 1.0 # 1.21

CATEGORIES =		www

HOMEPAGE =		https://uriparser.github.io/

# BSD 3-clause
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

MASTER_SITES =		https://github.com/uriparser/uriparser/archive/

# cpptest is only used during tests but configure requires it
BUILD_DEPENDS =		devel/cpptest
TEST_DEPENDS =		devel/cpptest

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--disable-doc
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include"

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15
BUILD_DEPENDS +=	${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/libtool

pre-configure:
	cd ${WRKSRC} && env -i ${AUTOCONF_ENV} autoreconf -fi

.include <bsd.port.mk>
