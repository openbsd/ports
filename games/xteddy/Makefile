# $OpenBSD: Makefile,v 1.30 2019/07/12 20:46:28 sthen Exp $

COMMENT=	cuddlesome teddy for the X11 desktop

DISTNAME=	xteddy-2.2
REVISION=	1
CATEGORIES=	games

HOMEPAGE=	http://staffwww.itn.liu.se/~stegu/xteddy/
MASTER_SITES=	${HOMEPAGE}

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += X11 Xext c Imlib2

LIB_DEPENDS=	graphics/imlib2

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=  CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib -lXext"

NO_TEST=	Yes

pre-configure:
.for f in configure xteddy.c
	@perl -pi -e 's#/usr/share/xteddy#${PREFIX}/share/xteddy#g' \
		${WRKSRC}/${f}
.endfor
.for f in xtoys xteddy_test
	@perl -pi -e 's#!!PREFIX!!#${PREFIX}#g' ${WRKSRC}/${f}
.endfor

.include <bsd.port.mk>
