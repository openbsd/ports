# $OpenBSD: Makefile,v 1.2 2002/07/17 00:03:01 lebel Exp $

COMMENT=		graphic representation of cvs repository

DISTNAME=		cvsgraph-1.2.0
CATEGORIES=		devel
HOMEPAGE=		http://www.akhphd.au.dk/~bertho/cvsgraph

MAINTAINER=	Aleksander Piotrowski <aleksander.piotrowski@piestrak.waw.pl>

# GPL 2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}/release/

LIB_DEPENDS=		gd.18::graphics/gd \
			jpeg::graphics/jpeg \
			png::graphics/png

ALL_TARGET=		

CONFIGURE_STYLE=	gnu dest
CONFIGURE_ARGS=		--with-gd-inc=${LOCALBASE}/include \
			--with-gd-lib=${LOCALBASE}/lib
CONFIGURE_ARGS+=	--with-jpeg-inc=${LOCALBASE}/include \
			--with-jpeg-lib=${LOCALBASE}/lib
CONFIGURE_ARGS+=	--with-png-inc=${LOCALBASE}/include \
			--with-png-lib=${LOCALBASE}/lib
CONFIGURE_ARGS+=	--with-z-inc=/usr/include --with-z-lib=/usr/lib

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/cvsgraph ${PREFIX}/bin	
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/cvsgraph
	${INSTALL_DATA} ${WRKSRC}/cvsgraph.conf \
			${PREFIX}/share/examples/cvsgraph
	${INSTALL_MAN}  ${WRKSRC}/cvsgraph.conf.5 ${PREFIX}/man/man5
	${INSTALL_MAN}  ${WRKSRC}/cvsgraph.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
