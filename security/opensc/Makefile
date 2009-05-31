# $OpenBSD: Makefile,v 1.10 2009/05/31 16:51:07 jasper Exp $

COMMENT=	set of libraries and utilities to access smart cards

DISTNAME=	opensc-0.11.8
CATEGORIES=	security
SHARED_LIBS +=  scconf               2.0      # .1.0
SHARED_LIBS +=  opensc               2.0      # .1.0
SHARED_LIBS +=  pkcs15init           2.0      # .1.0
SHARED_LIBS +=  opensc               2.0      # .1.0
SHARED_LIBS +=  pkcs15init           2.0      # .1.0
MODGNU_SHARED_LIBS=opensc	'' \
		pkcs15init	'' \
		scam		'' \
		scconf		'' \
		pkcs11		''

HOMEPAGE=	http://www.opensc-project.org/

MAINTAINER=	Douglas Santos <dsantos@hydroxyl.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 

MASTER_SITES=	${HOMEPAGE}/files/opensc/

WANTLIB=	c crypto ltdl ncurses readline z

LIB_DEPENDS=	openct.>=1::security/openct

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu old
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-static \
		--sysconfdir=${SYSCONFDIR} \
		--disable-ldap
CONFIGURE_ENV=	PTHREAD_LIBS=-pthread \
		LTLIB_CFLAGS="-I${LOCALBASE}/include" \
		LTLIB_LIBS="-L${LOCALBASE}/lib -lltdl" 

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/opensc
	${INSTALL_DATA} ${WRKSRC}/etc/opensc.conf \
		${PREFIX}/share/examples/opensc

.include <bsd.port.mk>
