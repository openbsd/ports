# $OpenBSD: Makefile,v 1.11 2000/03/24 22:11:33 espie Exp $

DISTNAME=	tar-1.13
CATEGORIES=	archivers
NEED_VERSION=	1.114
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= tar


MAINTAINER=	niklas@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--program-prefix=g

post-extract:
	@rm -f ${WRKSRC}/doc/tar.info*

post-install:
	@strip ${PREFIX}/bin/gtar
	@strip ${PREFIX}/libexec/grmt
	@install-info ${PREFIX}/info/tar.info ${PREFIX}/info/dir
	@PKG_PREFIX="${PREFIX}" ${SH} ${PKGDIR}/INSTALL ${DISTNAME} POST-INSTALL

.include <bsd.port.mk>
