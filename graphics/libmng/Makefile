# $OpenBSD: Makefile,v 1.1.1.1 2001/02/19 18:51:05 brad Exp $

DISTNAME=	libmng-1.0.0
CATEGORIES=	graphics
NEED_VERSION=	1.336
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= libmng

HOMEPAGE=	http://www.libmng.com/

LIB_DEPENDS=    jpeg.62::graphics/jpeg

MAINTAINER=	Brad Smith <bsmith@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static \
		--with-jpeg="${LOCALBASE}" --without-lcms

post-install:
	@cd ${WRKSRC}/doc/man && \
		${INSTALL_MAN} libmng.3 ${PREFIX}/man/man3 && \
		${INSTALL_MAN} mng.5 jng.5 ${PREFIX}/man/man5

.include <bsd.port.mk>
