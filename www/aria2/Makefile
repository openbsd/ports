# $OpenBSD: Makefile,v 1.19 2012/09/04 11:25:37 gonzalo Exp $

COMMENT =		lightweight multi-protocol & multi-source download utility
DISTNAME =		aria2-1.15.2
CATEGORIES =		www
HOMEPAGE =		http://aria2.sourceforge.net/

MAINTAINER = 		Remi Pointel <rpointel@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=aria2/}

MODULES =		devel/gettext

LIB_DEPENDS =		net/libcares

REGRESS_DEPENDS +=	devel/cppunit

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

REGRESS_FLAGS +=	LDFLAGS="-lcppunit"

.include <bsd.port.mk>
