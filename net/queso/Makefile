# $OpenBSD: Makefile,v 1.3 1999/07/27 04:30:06 brad Exp $

DISTNAME=	queso-980922
CATEGORIES=	net
MASTER_SITES=	ftp://ftp.cdrom.com/pub/FreeBSD/distfiles/

MAINTAINER=	brad@openbsd.org

GNU_CONFIGURE=   yes

post-install:
	@${MKDIR} ${PREFIX}/share/doc/queso
	${INSTALL_DATA} ${WRKSRC}/Documentation.txt ${PREFIX}/share/doc/queso

.include <bsd.port.mk>
