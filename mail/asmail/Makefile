# $OpenBSD: Makefile,v 1.11 2000/06/04 21:40:43 espie Exp $

DISTNAME=	asmail-0.50
CATEGORIES=	mail x11
#FAKE=No
MASTER_SITES=	ftp://afterstep.foo.net/pub/AfterStep/apps/asmail/ \
		ftp://ftp.cs.tu-berlin.de/pub/X/afterstep/apps/asmail/

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_IMAKE=	Yes

PIXMAPS=	e/e-no.xpm e/e0.xpm e/e1.xpm e/e10.xpm e/e11.xpm e/e2.xpm \
		e/e3.xpm e/e4.xpm e/e5.xpm e/e6.xpm e/e7.xpm e/e8.xpm e/e9.xpm \
		monitor-e/monitor-e0.xpm monitor-e/monitor-e1.xpm \
		monitor-e/monitor-e10.xpm monitor-e/monitor-e11.xpm \
		monitor-e/monitor-e2.xpm monitor-e/monitor-e3.xpm \
		monitor-e/monitor-e4.xpm monitor-e/monitor-e5.xpm \
		monitor-e/monitor-e6.xpm monitor-e/monitor-e7.xpm \
		monitor-e/monitor-e8.xpm monitor-e/monitor-e9.xpm \
		monitor-e/monitor-no.xpm std/newmail.xpm \
		std/newmail_s.xpm std/nomail.xpm std/nomail_s.xpm \
		std/oldmail.xpm std/oldmail_s.xpm

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/X11/pixmaps
.for pixmap in ${PIXMAPS}
	${INSTALL_DATA} ${WRKSRC}/pixmaps/${pixmap} ${PREFIX}/include/X11/pixmaps
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/asmail
	${INSTALL_DATA} ${WRKSRC}/sample.asmailrc ${PREFIX}/share/doc/asmail
	strip ${PREFIX}/bin/asmail

.include <bsd.port.mk>
