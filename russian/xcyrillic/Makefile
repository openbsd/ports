# $OpenBSD: Makefile,v 1.10 2000/01/19 08:52:31 form Exp $

DISTNAME=	xcyrillic-1.1
CATEGORIES=	russian x11

MASTER_SITES=	ftp://vell.nsc.ru/pub/X11/cyrillic/
ALL_TARGET=	X11R6
USE_X11=	yes

MAINTAINER=	form@openbsd.org

post-build:
	${PREFIX}/bin/mkfontdir ${WRKSRC}/misc ${WRKSRC}/75dpi ${WRKSRC}/100dpi

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/X11/fonts/xcyrillic
.for d in misc 75dpi 100dpi
	${INSTALL_DATA_DIR} ${PREFIX}/lib/X11/fonts/xcyrillic/${d}
	${INSTALL_DATA} ${WRKSRC}/${d}/fonts.dir ${WRKSRC}/${d}/*.pcf.gz \
		${PREFIX}/lib/X11/fonts/xcyrillic/${d}
.endfor
	${INSTALL_DATA} ${WRKSRC}/misc/fonts.alias \
		${PREFIX}/lib/X11/fonts/xcyrillic/misc
	@PKG_PREFIX="${PREFIX}" ${SH} ${PKGDIR}/INSTALL ${DISTNAME} POST-INSTALL

.include <bsd.port.mk>
