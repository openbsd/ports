# $OpenBSD: Makefile,v 1.21 2002/10/28 14:26:31 naddy Exp $

COMMENT=	"setup X11 fonts for russian language (koi8-r)"

DISTNAME=	xcyrillic-2.0
CATEGORIES=	russian x11

MASTER_SITES=	ftp://ftp.openbsd.ru/pub/X11/cyrillic/ \
		ftp://vell.nsc.ru/pub/X11/cyrillic/ \
		ftp://ftp.styx.org/users/ww/cyrillic/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKSRC=		${WRKDIR}/${DISTNAME}/fonts
USE_X11=	Yes
NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA} ${WRKBUILD}/../LICENSE.txt \
		${PREFIX}/lib/X11/fonts/xcyrillic

.include <bsd.port.mk>
