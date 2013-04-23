# $OpenBSD: Makefile,v 1.24 2013/04/23 12:00:21 gonzalo Exp $

COMMENT =		lightweight multi-protocol & multi-source download utility
DISTNAME =		aria2-1.17.0
CATEGORIES =		www
HOMEPAGE =		http://aria2.sourceforge.net/

MAINTAINER =		Gonzalo L. R. <gonzalo@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=aria2/}

MODULES =		devel/gettext

LIB_DEPENDS =		net/libcares

TEST_DEPENDS +=	devel/cppunit

WANTLIB += c cares crypto expat m sqlite3 ssl stdc++ z

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

CONFIGURE_ARGS +=	--with-sqlite3 \
			--with-openssl \
			--without-gnutls \
			--with-libz \
			--with-libcares \
			--with-libexpat \
			--without-libxml2

# Prevent gcc 4.2.1 from running out of memory.
.if ${MACHINE_ARCH:Mmips64*}
CFLAGS +=		-O0
.endif

TEST_FLAGS +=	LDFLAGS="-lcppunit"

.include <bsd.port.mk>
