# $OpenBSD: Makefile,v 1.4 1999/12/01 03:04:03 brad Exp $

DISTNAME=	queso-980922
CATEGORIES=	net
MASTER_SITES=	ftp://ftp.cdrom.com/pub/FreeBSD/distfiles/

MAINTAINER=	brad@openbsd.org

GNU_CONFIGURE=	yes

post-install:
	@mkdir -p ${PREFIX}/man/man1
	@mkdir -p ${PREFIX}/share/doc/queso
	${INSTALL_MAN} ${FILESDIR}/queso.1 ${PREFIX}/man/man1
	${INSTALL_DATA} ${WRKSRC}/Documentation.txt ${PREFIX}/share/doc/queso

.include <bsd.port.mk>
