# $OpenBSD: Makefile,v 1.14 2013/03/21 08:45:14 ajacoutot Exp $

COMMENT=	library implementing the Unicode Bidirectional Algorithm

DISTNAME=	fribidi-0.19.5
CATEGORIES=	devel
MASTER_SITES=	${HOMEPAGE}download/
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS +=	fribidi              2.0      # 3.4

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
