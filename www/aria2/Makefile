# $OpenBSD: Makefile,v 1.29 2014/06/25 13:48:58 bcallah Exp $

COMMENT =		lightweight multi-protocol & multi-source download utility
DISTNAME =		aria2-1.18.5
REVISION =		2
CATEGORIES =		www
HOMEPAGE =		http://aria2.sourceforge.net/

MAINTAINER =		Gonzalo L. R. <gonzalo@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=aria2/}

MODULES =		devel/gettext \
			gcc4
MODGCC4_ARCHS =		*
MODGCC4_LANGS =		c c++

LIB_DEPENDS =		net/libcares

BUILD_DEPENDS =		devel/m4 \
			devel/cppunit

TEST_DEPENDS =		${BUILD_DEPENDS}

WANTLIB += c cares crypto expat m sqlite3 ssl z

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

CONFIGURE_ARGS +=	--with-sqlite3 \
			--with-libz \
			--with-libcares \
			--with-libexpat \
			--with-openssl \
			--without-gnutls \
			--without-libxml2

.include <bsd.port.mk>
