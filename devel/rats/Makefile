# $OpenBSD: Makefile,v 1.3 2001/07/22 05:39:20 jsyn Exp $

COMMENT=		"c source code auditing tool"

DISTNAME=		rats-1.0
CATEGORIES=     	devel security
NEED_VERSION=		1.425

HOMEPAGE=		http://www.securesw.com/rats/

MAINTAINER=		Jason Peel <jsyn@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.securesw.com/rats/

LIB_DEPENDS=		expat::textproc/expat

CONFIGURE_STYLE=	gnu dest
CONFIGURE_ARGS+=	--with-expat-lib=${LOCALBASE}/lib \
			--with-expat-include=${LOCALBASE}/include
CONFIGURE_ENV=		CC="${CC}" CFLAGS="${CFLAGS}"

ALL_TARGET=		rats

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/rats
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/rats

.include <bsd.port.mk>
