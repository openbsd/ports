# $OpenBSD: Makefile,v 1.17 2000/10/22 14:03:21 espie Exp $

DISTNAME=	guile-1.4
CATEGORIES=	lang
NEED_VERSION=	1.310
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= guile

HOMEPAGE=	http://www.gnu.org/software/guile/

MAINTAINER=	Bruno Rohee <rohee@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	simple
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/aclocal
	${INSTALL_DATA} ${WRKSRC}/guile-config/guile.m4 ${PREFIX}/share/aclocal
	${INSTALL_DATA} ${WRKSRC}/qthreads.m4 ${PREFIX}/share/aclocal

.include <bsd.port.mk>
