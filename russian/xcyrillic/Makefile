# $OpenBSD: Makefile,v 1.15 2000/06/26 22:20:40 form Exp $

DISTNAME=	xcyrillic-2.0
CATEGORIES=	russian x11
MASTER_SITES=	ftp://vell.nsc.ru/pub/X11/cyrillic/ \
		ftp://ftp.styx.org/users/ww/cyrillic/

MAINTAINER=	form@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKSRC=		${WRKDIR}/${DISTNAME}/fonts
USE_X11=	Yes

post-install:
	${INSTALL_DATA} ${WRKBUILD}/../LICENSE.txt \
		${PREFIX}/lib/X11/fonts/xcyrillic

.include <bsd.port.mk>
