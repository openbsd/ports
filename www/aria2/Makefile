# $OpenBSD: Makefile,v 1.6 2010/12/19 20:25:59 rpointel Exp $

COMMENT =		lightweight multi-protocol & multi-source download utility
DISTNAME =		aria2-1.10.8
CATEGORIES =		www
HOMEPAGE =		http://aria2.sourceforge.net/

MAINTAINER = 		Remi Pointel <remi.pointel@xiri.fr>

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

.include <bsd.port.mk>
