# $OpenBSD: Makefile,v 1.9 2000/02/12 08:02:08 turan Exp $

DISTNAME=	tar-1.13
CATEGORIES=	archivers
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= tar

NEED_VERSION=	1.114

MAINTAINER=	niklas@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

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
