# $OpenBSD: Makefile,v 1.9 2000/01/19 08:30:28 form Exp $

DISTNAME=	xcyrillic-1.1
CATEGORIES=	russian x11

MASTER_SITES=	ftp://vell.nsc.ru/pub/X11/cyrillic/
ALL_TARGET=	X11R6
USE_X11=	yes

MAINTAINER=	form@openbsd.org

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/X11/fonts/xcyrillic
	${INSTALL_DATA_DIR} ${PREFIX}/lib/X11/fonts/xcyrillic/misc \
		${PREFIX}/lib/X11/fonts/xcyrillic/75dpi \
		${PREFIX}/lib/X11/fonts/xcyrillic/100dpi
	${INSTALL_DATA} ${WRKSRC}/misc/*.pcf.gz \
		${PREFIX}/lib/X11/fonts/xcyrillic/misc
	${INSTALL_DATA} ${WRKSRC}/misc/fonts.alias \
		${PREFIX}/lib/X11/fonts/xcyrillic/misc
	${INSTALL_DATA} ${WRKSRC}/75dpi/*.pcf.gz \
		${PREFIX}/lib/X11/fonts/xcyrillic/75dpi
	${INSTALL_DATA} ${WRKSRC}/100dpi/*.pcf.gz \
		${PREFIX}/lib/X11/fonts/xcyrillic/100dpi

	@PKG_PREFIX="${PREFIX}" ${SH} ${PKGDIR}/INSTALL ${DISTNAME} POST-INSTALL

.include <bsd.port.mk>
