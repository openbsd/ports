# $OpenBSD: Makefile,v 1.14 2000/06/15 05:31:54 form Exp $

DISTNAME=	xcyrillic-1.1
CATEGORIES=	russian x11
MASTER_SITES=	ftp://ftp.styx.org/users/ww/cyrillic/ \
		${MASTER_SITE_BACKUP} \
		ftp://vell.nsc.ru/pub/X11/cyrillic/

MAINTAINER=	form@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes

ALL_TARGET=	X11R6

post-build:
	@${X11BASE}/bin/mkfontdir ${WRKSRC}/misc ${WRKSRC}/75dpi ${WRKSRC}/100dpi

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/X11/fonts/xcyrillic
.for d in misc 75dpi 100dpi
	${INSTALL_DATA_DIR} ${PREFIX}/lib/X11/fonts/xcyrillic/${d}
	${INSTALL_DATA} ${WRKSRC}/${d}/fonts.dir ${WRKSRC}/${d}/*.pcf.gz \
		${PREFIX}/lib/X11/fonts/xcyrillic/${d}
.endfor
	${INSTALL_DATA} ${WRKSRC}/misc/fonts.alias \
		${PREFIX}/lib/X11/fonts/xcyrillic/misc

.include <bsd.port.mk>
