# $OpenBSD: Makefile,v 1.8 2002/04/30 03:45:09 jsyn Exp $

COMMENT=		"source code auditing tool"

DISTNAME=		rats-1.4
CATEGORIES=     	devel security
NEED_VERSION=		1.525

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
			--with-expat-include=${LOCALBASE}/include \
			--libdir=${WRKINST}${PREFIX}/share/rats
MAKE_FLAGS=		CFLAGS='${CFLAGS} -I${LOCALBASE}/include \
			  -DHAVE_LIBEXPAT=1 -DHAVE_EXPAT_H=1 \
			  -DLIBDIR=\"${LOCALBASE}/share/rats\"' 

ALL_TARGET=		rats
NO_REGRESS=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/rats
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/rats

.include <bsd.port.mk>
