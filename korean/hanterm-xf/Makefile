# $OpenBSD: Makefile,v 1.8 2005/02/21 20:06:54 alek Exp $

COMMENT=	"XFree86-based xterm with Korean language support"

DISTNAME=	hanterm-xf-p19
CATEGORIES=	korean x11

MASTER_SITES=	http://www.hanterm.org/download/hanterm-xf/
HOMEPAGE=	http://www.hanterm.org/

PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes
WANTLIB=		c Xt SM Xmu Xaw termcap X11 Xext ICE

MODULES=	converters/libiconv

USE_X11=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV+=	CFLAGS="${CFLAGS} -I${PREFIX}/include" \
		X_EXTRA_LIBS="-L${PREFIX}/lib -liconv"

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/hanterm ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/Hanterm.ad \
		${PREFIX}/lib/X11/app-defaults/Hanterm

.include <bsd.port.mk>
