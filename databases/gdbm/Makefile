# $OpenBSD: Makefile,v 1.8 1999/12/06 21:29:09 brad Exp $

DISTNAME=	gdbm-1.8.0
CATEGORIES=	databases
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= gdbm

NEED_VERSION=	1.73

MAINTAINER=	hannah@mamba.pond.sub.org

GNU_CONFIGURE=	yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

pre-configure:
	@rm -f ${WRKSRC}/gdbm.info*

post-install:
	@install-info ${PREFIX}/info/gdbm.info ${PREFIX}/info/dir

.include <bsd.port.mk>
