# $OpenBSD: Makefile,v 1.4 2015/05/12 22:26:41 ajacoutot Exp $

COMMENT =		public suffix list library

V =			0.7.1
REVISION =		0
DISTNAME =		libpsl-$V

SHARED_LIBS +=		psl	0.0	# 2.4

CATEGORIES =		net www

HOMEPAGE =		https://github.com/rockdaboot/libpsl/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c idn unistring

GH_ACCOUNT =		rockdaboot
GH_PROJECT =		libpsl
GH_TAGNAME =		libpsl-$V

MODULES =		devel/gettext
LIB_DEPENDS =		converters/libunistring \
			devel/libidn

BUILD_DEPENDS =		devel/libtool \
			sysutils/coreutils
CONFIGURE_STYLE =	autoconf automake
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--enable-builtin=libidn \
			--enable-runtime=libidn
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.11

post-patch:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} \
	    AUTOCONF_VERSION=${AUTOCONF_VERSION} \
	    AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
	    sh ./autogen.sh

.include <bsd.port.mk>
