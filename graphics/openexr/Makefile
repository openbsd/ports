# $OpenBSD: Makefile,v 1.1.1.1 2005/01/31 08:16:27 espie Exp $

COMMENT=	'high dynamic range image format'
CATEGORIES=	graphics

HOMEPAGE=	http://www.openexr.com/index.html
MASTER_SITES=	http://savannah.nongnu.org/download/openexr/

DISTNAME=	OpenEXR-1.2.1

# Almost BSD
# `name of ILM not to be used for advertizing without written agreement'
PERMIT_PACKAGE_CDROM=Yes
PERMIT_PACKAGE_FTP=Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=Yes

LIB_DEPENDS=fltk,fltk_gl::x11/fltk
WANTLIB=	GL GLU X11 Xext c m stdc++ z

# Regress unhappy with separate build
#SEPARATE_BUILD=		simple

CONFIGURE_STYLE=	gnu
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes

DOCDIR=${PREFIX}/share/doc/${DISTNAME}

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}/images
	${INSTALL_DATA} ${WRKDIST}/doc/{api,details}.html ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/doc/images/*.png ${DOCDIR}/images
	
.include <bsd.port.mk>
