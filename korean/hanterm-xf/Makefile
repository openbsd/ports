# $OpenBSD: Makefile,v 1.2 2001/06/07 13:43:22 naddy Exp $

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

LIB_DEPENDS=	iconv.2::converters/libiconv

CONFIGURE_STYLE=gnu
CONFIGURE_ENV+=	CFLAGS="${CFLAGS} -I${PREFIX}/include" \
		X_EXTRA_LIBS="-L${PREFIX}/lib -liconv"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/hanterm ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/Hanterm.ad \
		${PREFIX}/lib/X11/app-defaults/Hanterm

.include <bsd.port.mk>
