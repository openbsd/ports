# $OpenBSD: Makefile,v 1.11 2012/10/01 07:46:47 brad Exp $

COMMENT=	library implementing the Unicode Bidirectional Algorithm

DISTNAME=	fribidi-0.19.4
CATEGORIES=	devel
MASTER_SITES=	${HOMEPAGE}download/
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS=	fribidi	2.0

HOMEPAGE=	http://fribidi.org/

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-static \
		--without-glib

post-install:
	${INSTALL_SCRIPT} ${FILESDIR}/fribidi-config ${PREFIX}/bin

.include <bsd.port.mk>
