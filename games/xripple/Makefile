# $OpenBSD: Makefile,v 1.3 1999/09/22 22:29:00 brad Exp $

DISTNAME=	xripple
PKGNAME=	xripple-1.0
CATEGORIES=	games
MASTER_SITES=	ftp://crydee.sai.msu.ru/zeus/X11/contrib/ \
		ftp://ftp.cin.nihon-u.ac.jp/pub/X11/enlightenment/misc/ \
		ftp://ftp.dataplus.se/pub/linux/enlightenment/misc/ \
		ftp://ftp.devolution.com/pub/enlightenment/ \
		ftp://ftp.dti.ad.jp/.1/X/e/ \
		ftp://ftp.gui.uva.es/pub/linux.new/software/X11/winman/enlightenment/ \
		ftp://ftp.gwdg.de/pub/linux/tux/x/enlightenment/enlightenment/misc/ \
		ftp://ftp.pconline.com/users/gjerde/enlightenment/

MAINTAINER=	mickey@openbsd.org

USE_IMAKE=	yes
ALL_TARGET=	xripple

post-configure:
	@cd ${WRKSRC}; ${MAKE} clean

post-install:
	${INSTALL_PROGRAM} ${WRKSRC}/xripple ${PREFIX}/bin

.include <bsd.port.mk>
