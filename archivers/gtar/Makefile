# $OpenBSD: Makefile,v 1.7 1999/12/15 22:13:13 brad Exp $

DISTNAME=	tar-1.13
CATEGORIES=	archivers
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= tar

NEED_VERSION=	1.114

MAINTAINER=	niklas@openbsd.org

GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--program-prefix=g

post-install:
	@strip ${PREFIX}/bin/gtar
	@strip ${PREFIX}/libexec/grmt
	@install-info ${PREFIX}/info/tar.info ${PREFIX}/info/dir
	@PKG_PREFIX="${PREFIX}" ${SH} ${PKGDIR}/INSTALL ${DISTNAME} POST-INSTALL

.include <bsd.port.mk>
