# $OpenBSD: Makefile,v 1.10 2000/02/15 05:05:28 turan Exp $

DISTNAME=	bricons
PKGNAME=	bricons-3.0
CATEGORIES=	x11
MASTER_SITES=	ftp://ftp.uni-paderborn.de/unix/X11/ftp.x.org/R5contrib/ \
		ftp://ftp.pasteur.fr/pub/computing/unix/X11/R5contrib/
EXTRACT_SUFX=	-athena-3.0.tar.gz

MAINTAINER=     angelos@openbsd.org

LICENSE_TYPE=		NONE
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

USE_IMAKE=	yes

post-install:
	${INSTALL_DATA} $(WRKDIR)/bricons/Xbricons $(PREFIX)/lib/X11/app-defaults/
	${INSTALL_DATA} $(WRKDIR)/bricons/bitmaps/* $(PREFIX)/include/X11/bitmaps/
	mkdir -p $(PREFIX)/include/X11/pixmaps
	${INSTALL_DATA} $(WRKDIR)/bricons/*.xpm $(PREFIX)/include/X11/pixmaps/
	@${ECHO_MSG} ""
	@${ECHO_MSG} "     Use ./files/DOTbriconsrc as an example. This  file"
	@${ECHO_MSG} "     should  be  stored in the same directory as the"
	@${ECHO_MSG} "     program is executed from."
	@${ECHO_MSG} ""

.include <bsd.port.mk>
