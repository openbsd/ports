# $OpenBSD: Makefile,v 1.6 2002/07/10 20:48:15 avsm Exp $

COMMENT=	"converts DVI files to PDF format"

DISTNAME=		dvipdfm-0.13.2b
CATEGORIES=     	print
NEED_VERSION=		1.489

HOMEPAGE=		http://gaspra.kettering.edu/dvipdfm/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://gaspra.kettering.edu/dvipdfm/

BUILD_DEPENDS=		::print/teTeX/base
LIB_DEPENDS=		png.2::graphics/png

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
