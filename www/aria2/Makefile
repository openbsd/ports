# $OpenBSD: Makefile,v 1.13 2011/08/26 09:42:42 rpointel Exp $

COMMENT =		lightweight multi-protocol & multi-source download utility
DISTNAME =		aria2-1.12.1
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

LIB_DEPENDS =		databases/sqlite3 \
			net/libcares

REGRESS_DEPENDS +=	devel/cppunit

WANTLIB += 		crypto expat ssl cares \
			sqlite3 c m stdc++ z

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

USE_GROFF =		Yes

REGRESS_FLAGS +=	LDFLAGS="-lcppunit"

.include <bsd.port.mk>
