# $OpenBSD: Makefile,v 1.5 2003/03/31 13:57:49 sturm Exp $

COMMENT=	"XFree86-based xterm with Korean language support"

DISTNAME=	hanterm-xf-p19
CATEGORIES=	korean x11

MASTER_SITES=	http://www.hanterm.org/download/hanterm-xf/
HOMEPAGE=	http://www.hanterm.org/

MAINTAINER=	Dug Song <dugsong@monkey.org>

PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes

MODULES=	iconv

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
