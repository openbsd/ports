# $OpenBSD: Makefile,v 1.7 1999/12/15 21:58:47 brad Exp $

DISTNAME=	sharutils-4.2
CATEGORIES=	archivers
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= sharutils

NEED_VERSION=	1.114

MAINTAINER=	ports@openbsd.org

GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--program-prefix=g --disable-uucode --disable-nls

INSTALL_TARGET=	install install-man

post-patch:
	@touch ${WRKSRC}/po/sharutils.pot

post-install:
	@strip ${PREFIX}/bin/gshar
	@strip ${PREFIX}/bin/gunshar
	@install-info ${PREFIX}/info/remsync.info ${PREFIX}/info/dir
	@install-info ${PREFIX}/info/sharutils.info ${PREFIX}/info/dir

.include <bsd.port.mk>
