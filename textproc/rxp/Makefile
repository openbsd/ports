# $OpenBSD: Makefile,v 1.1.1.1 1999/07/20 19:30:41 jakob Exp $

# what port/package will be created
#
DISTNAME=	rxp-1.0.9
CATEGORIES=	textproc

# where to send comments about this port
#
MAINTAINER=     jakob@openbsd.org

# where the source files can be fetched
#
MASTER_SITES=	ftp://ftp.cogsci.ed.ac.uk/pub/richard/

# how to install
#
do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/rxp ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/rxp.1 ${PREFIX}/man/man1/rxp.1

.include <bsd.port.mk>
