# $OpenBSD: Makefile,v 1.15 2000/06/10 20:22:13 brad Exp $

DISTNAME=	tar-1.13
CATEGORIES=	archivers
NEED_VERSION=	1.301
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= tar

BUILD_DEPENDS=	msgfmt::devel/gettext

MAINTAINER=	niklas@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	simple
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --program-prefix="g"

post-extract:
	@rm -f ${WRKSRC}/doc/tar.info*

.include <bsd.port.mk>
