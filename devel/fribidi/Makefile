# $OpenBSD: Makefile,v 1.17 2015/11/13 09:09:55 ajacoutot Exp $

COMMENT=	library implementing the Unicode Bidirectional Algorithm

DISTNAME=	fribidi-0.19.7
CATEGORIES=	devel
MASTER_SITES=	${HOMEPAGE}download/
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS +=  fribidi              2.0      # 3.6

HOMEPAGE=	http://fribidi.org/

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-static \
		--without-glib

post-install:
	${INSTALL_SCRIPT} ${FILESDIR}/fribidi-config ${PREFIX}/bin

.include <bsd.port.mk>
