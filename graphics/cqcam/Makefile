# $OpenBSD: Makefile,v 1.21 2013/03/11 11:10:51 espie Exp $

ONLY_FOR_ARCHS= i386

COMMENT=	color QuickCam control program

DISTNAME=	cqcam-0.91
REVISION =	3
CATEGORIES=	graphics

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c m stdc++ jpeg>=62

HOMEPAGE=	http://www.cs.duke.edu/~reynolds/cqcam/
MASTER_SITES=	${HOMEPAGE}

USE_GROFF =	Yes
LIB_DEPENDS=	graphics/jpeg

CONFIGURE_STYLE= gnu dest
CONFIGURE_ARGS= --enable-jpeg \
		--enable-asm \
		--without-xview

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
MAKE_FLAGS=	CLIENTS="cli webcam"

NO_TEST=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/cqcam
	${INSTALL_DATA} ${WRKSRC}/docs/README.webcam \
		${PREFIX}/share/doc/cqcam/README.webcam
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/cqcam
	${INSTALL_DATA} ${WRKSRC}/.cqcrc \
		${PREFIX}/share/examples/cqcam/dot.cqcrc
	${INSTALL_DATA} ${WRKSRC}/webcam/nph-webcam \
		${PREFIX}/share/examples/cqcam/nph-webcam

.include <bsd.port.mk>
