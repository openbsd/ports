# $OpenBSD: Makefile,v 1.28 2015/08/21 19:17:10 sthen Exp $

COMMENT=	cuddlesome teddy for the X11 desktop

DISTNAME=	xteddy-2.2
REVISION=	0
CATEGORIES=	games

HOMEPAGE=	http://staffwww.itn.liu.se/~stegu/xteddy/
MASTER_SITES=	${HOMEPAGE}

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xext c Imlib2 freetype m z

LIB_DEPENDS=	graphics/imlib2

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=  CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

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
