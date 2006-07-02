# $OpenBSD: Makefile,v 1.1.1.1 2006/07/02 16:54:24 jasper Exp $

COMMENT=		"text reader and catalog browser for Project Gutenberg"

DISTNAME=		gutenpy-0.1.10
CATEGORIES=		misc x11

HOMEPAGE=		http://gutenpy.sourceforge.net/

MAINTAINER=		Jasper Lievisse Adriaase <jasper@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=gutenpy/}
EXTRACT_SUFX=		.zip

MODULES=		lang/python

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		:py-xml-*:textproc/py-xml \
			:py-gtk2->=2.6.3:x11/py-gtk2
			
NO_BUILD=		Yes
NO_REGRESS=		Yes

LIB_DIR=	${PREFIX}/lib/python${MODPY_VERSION}/site-packages/GutenPy

do-configure:
		@perl -pi -e 's,!!PREFIX!!,${PREFIX},' ${WRKSRC}/gutenpy.py
		@perl -pi -e 's,!!LIB_DIR!!,${LIB_DIR},' ${WRKSRC}/gutenpy.py

do-install:
		${INSTALL_SCRIPT} ${WRKSRC}/gutenpy.py ${PREFIX}/bin/gutenpy
		${INSTALL_DATA_DIR} ${LIB_DIR}
		${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gutenpy
		${INSTALL_DATA_DIR} ${PREFIX}/share/gutenpy/icons
		${INSTALL_DATA} ${WRKSRC}/GutenPy/* ${LIB_DIR}
		${INSTALL_DATA} ${WRKSRC}/docs/* ${PREFIX}/share/doc/gutenpy/
		${INSTALL_DATA} ${WRKSRC}/icons/* ${PREFIX}/share/gutenpy/icons/

.include <bsd.port.mk>
