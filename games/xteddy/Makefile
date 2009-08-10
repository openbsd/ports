# $OpenBSD: Makefile,v 1.20 2009/08/10 06:31:43 kili Exp $

COMMENT=	cuddlesome teddy for the X11 desktop

DISTNAME=	xteddy-2.0.2
PKGNAME=	${DISTNAME}p1
CATEGORIES=	games

HOMEPAGE=	http://staffwww.itn.liu.se/~stegu/xteddy/
MASTER_SITES=	${HOMEPAGE}

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		ICE SM X11 Xext c jpeg m png pthread-stubs tiff ungif \
			xcb z

LIB_DEPENDS=	Imlib.>=19::graphics/imlib

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=  CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

USE_X11=	Yes
NO_REGRESS=	Yes

pre-configure:
.for f in configure xteddy.c
	@perl -pi -e 's#/usr/share/xteddy#${PREFIX}/share/xteddy#g' \
		${WRKSRC}/${f}
.endfor
.for f in xtoys xteddy_test
	@perl -pi -e 's#!!PREFIX!!#${PREFIX}#g' ${WRKSRC}/${f}
.endfor

.include <bsd.port.mk>
