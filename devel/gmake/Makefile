# $OpenBSD: Makefile,v 1.16 2000/03/07 01:48:06 espie Exp $

DISTNAME=	make-3.78.1
PKGNAME=	gmake-3.78.1
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= make

MAINTAINER=	todd@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	simple
GNU_CONFIGURE=	Yes
CONFIGURE_ARGS=	--program-transform-name='s/^/g/'
FAKE=Yes

post-extract:
	@rm -f ${WRKSRC}/make.info*

post-install:
	@chmod g-s ${PREFIX}/bin/gmake
	@chown ${BINOWN}:${BINGRP} ${PREFIX}/bin/gmake
	@install-info ${PREFIX}/info/make.info ${PREFIX}/info/dir

.include <bsd.port.mk>
