# $OpenBSD: Makefile,v 1.5 1999/11/03 05:27:36 fgsch Exp $

DISTNAME=	kaffe-1.0.5
CATEGORIES=     lang

MASTER_SITES=	ftp://ftp.kaffe.org/pub/kaffe/

MAINTAINER=	ports@openbsd.org

GNU_CONFIGURE=	yes

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/kaffe
	@${INSTALL_DATA} ${WRKSRC}/FAQ/* ${PREFIX}/share/doc/kaffe

.include <bsd.port.mk>
