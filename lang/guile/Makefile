# $OpenBSD: Makefile,v 1.19 2002/05/13 23:31:25 espie Exp $

COMMENT=	"GNU's Ubiquitous Intelligent Language for Extension"

DISTNAME=	guile-1.4
CATEGORIES=	lang
NEED_VERSION=	1.402
MASTER_SITES=	${MASTER_SITE_GNU:=guile/}

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
