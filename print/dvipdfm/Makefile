# $OpenBSD: Makefile,v 1.3 2001/05/06 03:19:51 lebel Exp $

COMMENT=	"converts DVI files to PDF format"

DISTNAME=		dvipdfm-0.13.2b
CATEGORIES=     	print
NEED_VERSION=	1.402

HOMEPAGE=		http://gaspra.kettering.edu/dvipdfm/
MAINTAINER=		Anil Madhavapeddy <avsm@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://gaspra.kettering.edu/dvipdfm/

BUILD_DEPENDS=		${LOCALBASE}/lib/libkpathsea.a::print/teTeX/base
LIB_DEPENDS=		png.1::graphics/png

CONFIGURE_STYLE=	gnu dest
CONFIGURE_ARGS=		--with-kpathsea=${LOCALBASE} --with-png=${LOCALBASE}
WRKDIST=		${WRKDIR}/dvipdfm

pre-fake:
	${INSTALL_DATA_DIR} ${PREFIX}/share/texmf/dvipdfm/config
	${INSTALL_DATA_DIR} ${PREFIX}/share/texmf/tex/latex/graphics

post-install:
	${INSTALL_DATA} ${WRKSRC}/latex-support/dvipdfm.def \
		${PREFIX}/share/texmf/tex/latex/graphics

.include <bsd.port.mk>
