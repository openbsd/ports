# $OpenBSD: Makefile,v 1.12 2019/07/12 20:47:03 sthen Exp $

COMMENT=		V4L compatible video application

DISTNAME=		luvcview-20070512
REVISION=		6
CATEGORIES=		graphics x11

# GPLv2+
PERMIT_PACKAGE=	Yes

HOMEPAGE=	http://mxhaard.free.fr/
MASTER_SITES=	${HOMEPAGE}/spca50x/Investigation/uvc/

LIB_DEPENDS=	devel/sdl>=1.2.5
WANTLIB=	SDL c pthread

MAKE_FLAGS=	CC="${CC}" \
		CFLAGS+="-I${X11BASE}/include -I${LOCALBASE}/include"

NO_TEST=	Yes

post-patch:
	sed -i 's/__u32/u_int32_t/g' ${WRKSRC}/v4l2uvc.[ch]

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/luvcview ${PREFIX}/bin

.include <bsd.port.mk>
