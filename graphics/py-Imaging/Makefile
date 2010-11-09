# $OpenBSD: Makefile,v 1.44 2010/11/09 18:22:27 espie Exp $

SHARED_ONLY=		Yes

COMMENT-main=		Python imaging library
COMMENT-examples=	example programs for the Python Imaging Library
COMMENT-bin=		binaries for the Python Imaging Library

VERSION=		1.1.6
DISTNAME=		Imaging-${VERSION}
PKGNAME-main=		py-${DISTNAME}
REVISION-main=		2
FULLPKGNAME-examples=	py-Imaging-examples-${VERSION}
EPOCH-examples=		0
FULLPKGPATH-examples=	graphics/py-Imaging,-examples
PKGNAME-bin=		py-Imaging-bin-${VERSION}
REVISION-bin=		4

CATEGORIES=		graphics

HOMEPAGE=		http://www.pythonware.com/products/pil/

# PIL Software License
# Permission to use, copy, modify and distribute freely.
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB-main=		freetype tcl84 z jpeg.>=62 tk84

MASTER_SITES=		http://effbot.org/media/downloads/

MODULES=		lang/python

RUN_DEPENDS=		${MODPY_TKINTER_DEPENDS}
RUN_DEPENDS-bin=	${RUN_DEPENDS} \
			:py-Imaging-*:graphics/py-Imaging
BUILD_DEPENDS=		${RUN_DEPENDS}
LIB_DEPENDS-main=	::graphics/jpeg \
			:tk->=8.4,<8.5:x11/tk/8.4

FLAVORS=		python2.4 python2.6
FLAVOR?=		python2.6

.if ${FLAVOR:L:Mpython2.4} && !${FLAVOR:L:Npython2.4}
MULTI_PACKAGES= -main
.elif ${FLAVOR:L:Mpython2.6} && !${FLAVOR:L:Npython2.6}
MULTI_PACKAGES= -main -examples -bin
.else
ERRORS+=		"Fatal: You must select one version: ${FLAVORS}"
.endif

MODPY_VERSION=		${FLAVOR:S/python//}


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
