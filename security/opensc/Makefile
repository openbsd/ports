# $OpenBSD: Makefile,v 1.1.1.1 2005/11/27 11:01:14 alek Exp $

COMMENT=	"set of libraries and utilities to access smart cards"

DISTNAME=	opensc-0.9.6
CATEGORIES=	security

HOMEPAGE=	http://www.opensc.org

MAINTAINER=	Douglas Santos <dsantos@hydroxyl.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 

MASTER_SITES=	${HOMEPAGE}/files/

WANTLIB=	readline crypto termcap c pthread

BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=	openct.1::security/openct

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu old
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-static \
		--sysconfdir=${SYSCONFDIR} \
		--disable-ldap
CONFIGURE_ENV=	PTHREAD_LIBS=-pthread

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/opensc
	${INSTALL_DATA} ${WRKSRC}/etc/opensc.conf \
		${PREFIX}/share/examples/opensc

.include <bsd.port.mk>
