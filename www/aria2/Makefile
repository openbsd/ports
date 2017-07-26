# $OpenBSD: Makefile,v 1.50 2017/07/26 22:45:31 sthen Exp $

BROKEN-alpha =	MetalinkParserStateV4Impl.cc:219:1: internal compiler error: Segmentation fault

COMMENT =		lightweight multi-protocol & multi-source download utility
V =			1.32.0
DISTNAME =		aria2-${V}
CATEGORIES =		www
HOMEPAGE =		https://aria2.github.io/
REVISION =		0

MAINTAINER =		Gonzalo L. R. <gonzalo@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://github.com/aria2/aria2/releases/download/release-${V}/

COMPILER =		gcc

LIB_DEPENDS =		databases/sqlite3 \
			devel/gettext \
			net/libcares \
			security/libssh2

BUILD_DEPENDS =		devel/m4 \
			devel/cppunit

TEST_DEPENDS =		${BUILD_DEPENDS}

WANTLIB += c cares crypto expat iconv intl m pthread sqlite3 ssh2 ssl z ${COMPILER_LIBCXX}

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

CONFIGURE_ARGS +=	--disable-rpath \
			--with-sqlite3 \
			--with-libz \
			--with-libcares \
			--with-libexpat \
			--with-libssh2 \
			--with-openssl \
			--without-gnutls \
			--without-libxml2

.include <bsd.port.mk>
