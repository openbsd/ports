# $OpenBSD: Makefile,v 1.14 2004/11/28 23:32:07 espie Exp $

COMMENT=	"cuddlesome teddy for the X11 desktop"

DISTNAME=	xteddy-2.0.2
CATEGORIES=	games
MASTER_SITES=	http://www.ITN.LiU.SE/~stegu/xteddy/

LIB_DEPENDS=	Imlib.19::graphics/imlib

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xext c jpeg m png tiff ungif z

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=  CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

NO_REGRESS=	Yes

post-patch:
.for f in configure xteddy.c
	@perl -pi -e 's#/usr/share/xteddy#${PREFIX}/share/xteddy#g' \
		${WRKSRC}/${f}
.endfor
.for f in xtoys xteddy_test
	@perl -pi -e 's#!!PREFIX!!#${PREFIX}#g' ${WRKSRC}/${f}
.endfor

.include <bsd.port.mk>
