# $OpenBSD: Makefile,v 1.23 2010/10/24 21:19:03 ajacoutot Exp $

COMMENT=	cuddlesome teddy for the X11 desktop

DISTNAME=	xteddy-2.2
CATEGORIES=	games

HOMEPAGE=	http://staffwww.itn.liu.se/~stegu/xteddy/
MASTER_SITES=	${HOMEPAGE}

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xext c

LIB_DEPENDS=	Imlib2::graphics/imlib2

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=  CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

USE_GROFF =	Yes
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
