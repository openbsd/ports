# $OpenBSD: Makefile,v 1.18 2009/06/03 00:48:51 pyr Exp $

COMMENT=	class 1 and 2 DAV server for the Apache webserver

DISTNAME=	mod_dav-1.0.3-1.3.6
PKGNAME=	mod_dav-1.0.3p7
CATEGORIES=	www

MASTER_SITES=	http://www.webdav.org/mod_dav/

HOMEPAGE=	http://www.webdav.org/mod_dav/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

MODULES+=	apache-module

# Apache
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		expat

MODAPACHE_NAME=	dav
MODAPACHE_FILE=	${MODAPACHE_LOCATION}/libdav.so

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-apxs=/usr/sbin/apxs \
			--with-expat=/usr

SUBST_VARS=	PKGNAME

DOCDIR=		share/doc/mod_dav
DOCFILES=	README INSTALL LICENSE.html

post-build:
	@${MODAPACHE_CREATE_ENABLE_SCRIPT}

NO_REGRESS=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/${DOCDIR}
.for f in ${DOCFILES}
	${INSTALL_DATA} ${WRKSRC}/${f} ${PREFIX}/${DOCDIR}
.endfor
	${MODAPACHE_INSTALL}

.include <bsd.port.mk>
