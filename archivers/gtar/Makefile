# $OpenBSD: Makefile,v 1.13 2000/03/30 23:04:10 brad Exp $

DISTNAME=	tar-1.13
CATEGORIES=	archivers
NEED_VERSION=	1.230
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= tar

MAINTAINER=	niklas@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE=		Yes

SEPARATE_BUILD=	simple
GNU_CONFIGURE=	Yes
CONFIGURE_ARGS=	--program-prefix="g"

post-extract:
	@rm -f ${WRKSRC}/doc/tar.info*

.include <bsd.port.mk>
