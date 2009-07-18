# $OpenBSD: Makefile,v 1.37 2009/07/18 12:37:21 djm Exp $

SHARED_ONLY=		Yes

COMMENT-main=		Python imaging library
COMMENT-examples=	example programs for the Python Imaging Library
COMMENT-bin=		binaries for the Python Imaging Library

VERSION=		1.1.6
DISTNAME=		Imaging-${VERSION}
PKGNAME-main=		py-${DISTNAME}p0
FULLPKGNAME-examples=	py-Imaging-examples-${VERSION}p0
FULLPKGNAME-bin=	py-Imaging-bin-${VERSION}p0

CATEGORIES=		graphics

HOMEPAGE=		http://www.pythonware.com/products/pil/

# PIL Software License
# Permission to use, copy, modify and distribute freely.
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB-main=		freetype tcl84 z

MASTER_SITES=		http://effbot.org/media/downloads/

MODULES=		lang/python

RUN_DEPENDS=		${MODPY_TKINTER_DEPENDS}
RUN_DEPENDS-bin=	${RUN_DEPENDS} \
			:py-Imaging:graphics/py-Imaging
BUILD_DEPENDS=		${RUN_DEPENDS}
LIB_DEPENDS-main=	jpeg.>=62::graphics/jpeg \
			tk84:tk->=8.4,<8.5:x11/tk/8.4

FLAVORS=		python2.4 python2.5 python2.6
FLAVOR?=		python2.5

.if ${FLAVOR:L:Mpython2.4} && !${FLAVOR:L:Npython2.4}
MULTI_PACKAGES= -main
.elif ( ${FLAVOR:L:Mpython2.5} && !${FLAVOR:L:Npython2.5} ) || \
      ( ${FLAVOR:L:Mpython2.6} && !${FLAVOR:L:Npython2.6} )
MULTI_PACKAGES= -main -examples -bin
.else
ERRORS+=		"Fatal: You must select one version: ${FLAVORS}"
.endif

MODPY_VERSION=		${FLAVOR:S/python//}

USE_X11=		Yes

do-configure:
	@perl -pi -e "s|!LOCALBASE!|${LOCALBASE}|g; s|!X11BASE!|${X11BASE}|g; s|!MODPY_VERSION!|${MODPY_VERSION}|g" \
		${WRKSRC}/setup.py ${WRKSRC}/Scripts/pil*.py

INCDIR=${PREFIX}/include/python${MODPY_VERSION}
post-install:
	${INSTALL_SCRIPT_DIR} ${PREFIX}/share/examples/py-Imaging
	${INSTALL_SCRIPT} ${WRKSRC}/Scripts/*.py \
		${PREFIX}/share/examples/py-Imaging
	${INSTALL_DATA} ${WRKSRC}/Scripts/README \
		${PREFIX}/share/examples/py-Imaging
	for file in ${WRKSRC}/Scripts/pil*.py; do \
		${INSTALL_SCRIPT} $$file ${PREFIX}/bin/`basename $$file .py`; \
	done
	find ${WRKINST} -name \*.egg-info -exec rm {} \;
	${INSTALL_DATA_DIR} ${INCDIR}
	${INSTALL_DATA} ${WRKSRC}/libImaging/ImPlatform.h ${INCDIR}
	${INSTALL_DATA} ${WRKSRC}/libImaging/Imaging.h ${INCDIR}

do-regress: fake
	@cd ${WRKSRC} && \
		${MAKE_ENV} PYTHONPATH=${WRKINST}${MODPY_SITEPKG}/PIL \
		${MODPY_BIN} ./selftest.py

.include <bsd.port.mk>
