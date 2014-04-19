# $OpenBSD: Makefile,v 1.26 2014/04/19 01:26:30 gonzalo Exp $

COMMENT =		lightweight multi-protocol & multi-source download utility
DISTNAME =		aria2-1.18.5
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

# Prevent gcc 4.2.1 from running out of memory.
.if ${MACHINE_ARCH:Mmips64*}
CFLAGS +=		-O0
.endif

.include <bsd.port.mk>
