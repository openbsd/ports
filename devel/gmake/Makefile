# $OpenBSD: Makefile,v 1.14 2000/02/12 08:02:13 turan Exp $

DISTNAME=	make-3.78.1
PKGNAME=	gmake-3.78.1
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= make

MAINTAINER=	todd@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

SEPARATE_BUILD=	simple
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--program-transform-name='s/^/g/'

post-extract:
	@rm -f ${WRKSRC}/make.info*

post-install:
	@chmod g-s ${PREFIX}/bin/gmake
	@chown ${BINOWN}:${BINGRP} ${PREFIX}/bin/gmake
	@install-info ${PREFIX}/info/make.info ${PREFIX}/info/dir

.include <bsd.port.mk>
