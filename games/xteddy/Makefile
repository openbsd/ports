# $OpenBSD: Makefile,v 1.12 2002/12/29 15:10:08 fgsch Exp $

COMMENT=	"cuddlesome teddy for the X11 desktop"

DISTNAME=	xteddy-2.0.1
CATEGORIES=	games
MASTER_SITES=	http://www.ITN.LiU.SE/~stegu/xteddy/

LIB_DEPENDS=	Imlib.19::graphics/imlib

PERMIT_PACKAGE_CDROM=	"no fee"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no fee"
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=  CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

post-patch:
.for f in configure xteddy.c
	@cd ${WRKSRC} && sed -e \
		s#/usr/share/xteddy#${PREFIX}/share/xteddy#g \
		< ${f} > ${f}.new && mv -f ${f}.new ${f}
.endfor
	@chmod 755 ${WRKSRC}/configure
	@cd ${WRKSRC} && sed -e \
		s#!!PREFIX!!#${PREFIX}#g < xtoys > xtoys.new && \
		mv -f xtoys.new xtoys

.include <bsd.port.mk>
