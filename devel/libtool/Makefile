# $OpenBSD: Makefile,v 1.22 2000/09/24 01:23:44 brad Exp $
# $FreeBSD: Makefile,v 1.2 1998/09/23 16:15:53 vanilla Exp $

DISTNAME=	libtool-1.3.5
CATEGORIES=	devel
NEED_VERSION=	1.310
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= libtool

HOMEPAGE=	http://www.gnu.org/software/libtool/

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	simple
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

pre-configure:
	@rm -f ${WRKSRC}/doc/libtool.info*

.include <bsd.port.mk>
