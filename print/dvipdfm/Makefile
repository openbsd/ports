# $OpenBSD: Makefile,v 1.1.1.1 2001/01/12 23:21:06 avsm Exp $

DISTNAME=		dvipdfm-0.13.2
CATEGORIES=     	print
NEED_VERSION=		1.348

HOMEPAGE=		http://gaspra.kettering.edu/dvipdfm/
MAINTAINER=		Anil Madhavapeddy <avsm@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://gaspra.kettering.edu/dvipdfm/

BUILD_DEPENDS=		${PREFIX}/lib/libkpathsea.a::print/teTeX
LIB_DEPENDS=		png.1::graphics/png

CONFIGURE_STYLE=	gnu dest
CONFIGURE_ARGS=		--with-kpathsea=${PREFIX} --with-png=${PREFIX}
WRKDIST=		${WRKDIR}/dvipdfm

pre-fake:
	${INSTALL_DATA_DIR} ${PREFIX}/share/texmf/dvipdfm/config
	${INSTALL_DATA_DIR} ${PREFIX}/share/texmf/tex/latex/graphics

post-install:
	${INSTALL_DATA} ${WRKSRC}/latex-support/dvipdfm.def \
		${PREFIX}/share/texmf/tex/latex/graphics

.include <bsd.port.mk>
