# $OpenBSD: Makefile,v 1.14 2000/08/09 21:41:19 brad Exp $

DISTNAME=	guile-1.3
CATEGORIES=	lang
NEED_VERSION=	1.310
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= guile

HOMEPAGE=	http://www.gnu.org/software/guile/

MAINTAINER=	rohee@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	simple
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

post-install:
	${INSTALL_DATA_DIR} ${LOCALBASE}/share/aclocal
	${INSTALL_DATA} ${WRKSRC}/guile.m4 ${LOCALBASE}/share/aclocal
	${INSTALL_DATA} ${WRKSRC}/qthreads.m4 ${LOCALBASE}/share/aclocal

.include <bsd.port.mk>
