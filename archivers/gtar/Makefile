# $OpenBSD: Makefile,v 1.12 2000/03/30 22:07:39 espie Exp $

DISTNAME=	tar-1.13
CATEGORIES=	archivers
NEED_VERSION=	1.230
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= tar


MAINTAINER=	niklas@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

GNU_CONFIGURE=	Yes
CONFIGURE_ARGS=	--program-prefix=g
FAKE=		Yes
SEPARATE_BUILD=	simple

post-extract:
	@rm -f ${WRKSRC}/doc/tar.info*

post-install:
	@strip ${PREFIX}/bin/gtar
	@strip ${PREFIX}/libexec/grmt

.include <bsd.port.mk>
