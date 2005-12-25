# $OpenBSD: Makefile,v 1.3 2005/12/25 15:52:38 sturm Exp $

COMMENT=	"set of libraries and utilities to access smart cards"

DISTNAME=	opensc-0.9.6
PKGNAME=	${DISTNAME}p0
CATEGORIES=	security
SHARED_LIBS=	opensc		1.0 \
		pkcs15init	1.0 \
		scam		1.0 \
		scconf		1.0 \
		pkcs11		1.0
MODGNU_SHARED_LIBS=opensc	'' \
		pkcs15init	'' \
		scam		'' \
		scconf		'' \
		pkcs11		''

HOMEPAGE=	http://www.opensc.org/

MAINTAINER=	Douglas Santos <dsantos@hydroxyl.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 

MASTER_SITES=	${HOMEPAGE}/files/ \
		${HOMEPAGE}/files/old/

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
