# $OpenBSD: Makefile,v 1.6 2001/11/12 22:52:05 jsyn Exp $

COMMENT=		"source code auditing tool"

DISTNAME=		rats-1.3
CATEGORIES=     	devel security
NEED_VERSION=		1.496

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
MAKE_FLAGS=		CFLAGS='${CFLAGS} -I${LOCALBASE}/include \
			  -DHAVE_LIBEXPAT=1 -DHAVE_EXPAT_H=1 \
			  -DLIBDIR=\"${LOCALBASE}/lib\"'

ALL_TARGET=		rats
NO_REGRESS=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/rats
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/rats

.include <bsd.port.mk>
