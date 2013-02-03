# $OpenBSD: Makefile,v 1.17 2013/02/03 14:04:24 sthen Exp $

COMMENT=	set of libraries and utilities to access smart cards

DISTNAME=	opensc-0.11.13
REVISION=	1
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

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/files/opensc/

WANTLIB=	c crypto ltdl ncurses readline z openct>=1

LIB_DEPENDS=	security/openct

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
USE_GROFF =	Yes

CONFIGURE_STYLE=gnu old
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-static \
		--sysconfdir=${SYSCONFDIR} \
		--enable-openct \
		--sysconfdir=${SYSCONFDIR}
CONFIGURE_ENV=	PTHREAD_LIBS=-pthread \
		LTLIB_CFLAGS="-I${LOCALBASE}/include" \
		LTLIB_LIBS="-L${LOCALBASE}/lib -lltdl"

FAKE_FLAGS=	mandir="${PREFIX}/man/"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/opensc
	${INSTALL_DATA} ${WRKSRC}/etc/opensc.conf \
		${PREFIX}/share/examples/opensc

.include <bsd.port.mk>
