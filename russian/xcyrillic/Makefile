# $OpenBSD: Makefile,v 1.19 2002/03/21 21:25:51 espie Exp $

COMMENT=	"setup X11 fonts for russian language (koi8-r)"

DISTNAME=	xcyrillic-2.0
CATEGORIES=	russian x11
NEED_VERSION=	1.515
MASTER_SITES=	ftp://ftp.openbsd.ru/pub/X11/cyrillic/ \
		ftp://vell.nsc.ru/pub/X11/cyrillic/ \
		ftp://ftp.styx.org/users/ww/cyrillic/

MAINTAINER=	Oleg Safiullin <form@openbsd.org>

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
