# $OpenBSD: Makefile,v 1.4 1999/04/09 02:27:17 brad Exp $

DISTNAME=	bricons
PKGNAME=	bricons-3.0
CATEGORIES=	x11
MASTER_SITES=	ftp://ftp.uni-paderborn.de/unix/X11/ftp.x.org/R5contrib/ \
		ftp://ftp.pasteur.fr/pub/computing/unix/X11/R5contrib/
EXTRACT_SUFX=	-athena-3.0.tar.gz

MAINTAINER=     angelos@openbsd.org

USE_IMAKE=	yes

post-install:
	${INSTALL_DATA} $(WRKDIR)/bricons/Xbricons $(PREFIX)/lib/X11/app-defaults/
	${INSTALL_DATA} $(WRKDIR)/bricons/bitmaps/* $(PREFIX)/include/X11/bitmaps/
	${MKDIR} $(PREFIX)/include/X11/pixmaps
	${INSTALL_DATA} $(WRKDIR)/bricons/*.xpm $(PREFIX)/include/X11/pixmaps/
	@${ECHO_MSG} ""
	@${ECHO_MSG} "     Use ./files/DOTbriconsrc as an example. This  file"
	@${ECHO_MSG} "     should  be  stored in the same directory as the"
	@${ECHO_MSG} "     program is executed from."
	@${ECHO_MSG} ""

.include <bsd.port.mk>
