# $OpenBSD: Makefile,v 1.4 2000/02/06 00:56:36 brad Exp $
# $FreeBSD: Makefile,v 1.6 1998/09/22 15:30:37 vanilla Exp $

DISTNAME=	aalib-1.2
CATEGORIES=	graphics
MASTER_SITES=	ftp://ftp.ta.jcu.cz/pub/aa/

MAINTAINER=	brad@openbsd.org

GNU_CONFIGURE=	yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

post-install:
	@install-info ${PREFIX}/info/aalib.info ${PREFIX}/info/dir
	@${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
