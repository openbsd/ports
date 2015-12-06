# $OpenBSD: Makefile,v 1.37 2015/12/06 04:51:24 gonzalo Exp $

BROKEN-alpha =	MetalinkParserStateV4Impl.cc:219:1: internal compiler error: Segmentation fault
COMMENT =		lightweight multi-protocol & multi-source download utility
DISTNAME =		aria2-1.19.2
CATEGORIES =		www
HOMEPAGE =		http://aria2.sourceforge.net/

MAINTAINER =		Gonzalo L. R. <gonzalo@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://github.com/tatsuhiro-t/aria2/releases/download/release-1.19.2/

MODULES =		devel/gettext \
			gcc4
MODGCC4_ARCHS =		*
MODGCC4_LANGS =		c c++

LIB_DEPENDS =		net/libcares \
			security/libssh2

BUILD_DEPENDS =		devel/m4 \
			devel/cppunit

TEST_DEPENDS =		${BUILD_DEPENDS}

WANTLIB += c cares crypto expat m sqlite3 ssh2 ssl z

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

CONFIGURE_ARGS +=	--with-sqlite3 \
			--with-libz \
			--with-libcares \
			--with-libexpat \
			--with-libssh2 \
			--with-openssl \
			--without-gnutls \
			--without-libxml2

.include <bsd.port.mk>
