# $OpenBSD: Makefile,v 1.27 2005/11/20 13:59:50 alek Exp $

SHARED_ONLY=	Yes

COMMENT=	"Python imaging library"

DISTNAME=	Imaging-1.1.5
PKGNAME=	py-${DISTNAME}
CATEGORIES=	graphics

HOMEPAGE=	http://www.pythonware.com/products/pil/

MAINTAINER=	Aleksander Piotrowski <alek@openbsd.org>

# PIL Software License
# Permission to use, copy, modify and distribute freely.
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	freetype tcl84 z

MASTER_SITES=	http://www.pythonware.net/storage/

MODULES=	lang/python

RUN_DEPENDS=	${MODPY_TKINTER_DEPENDS}
BUILD_DEPENDS=	${RUN_DEPENDS}
LIB_DEPENDS=	jpeg.62::graphics/jpeg \
		tk84:tk-8.4.*:x11/tk/8.4

do-configure:
	@perl -pi -e "s|!LOCALBASE!|${LOCALBASE}|g; s|!X11BASE!|${X11BASE}|g; s|!MODPY_VERSION!|${MODPY_VERSION}|g" \
		${WRKSRC}/setup.py ${WRKSRC}/Scripts/pil*.py

post-install:
	${INSTALL_SCRIPT_DIR} ${PREFIX}/share/examples/py-Imaging
	${INSTALL_SCRIPT} ${WRKSRC}/Scripts/*.py \
		${PREFIX}/share/examples/py-Imaging
	${INSTALL_DATA} ${WRKSRC}/Scripts/README \
		${PREFIX}/share/examples/py-Imaging
	for file in ${WRKSRC}/Scripts/pil*.py; do \
		${INSTALL_SCRIPT} $$file ${PREFIX}/bin/`basename $$file .py`; \
	done

do-regress: fake
	@cd ${WRKSRC} && \
		${MAKE_ENV} PYTHONPATH=${WRKINST}${MODPY_SITEPKG}/PIL \
		${MODPY_BIN} ./selftest.py

.include <bsd.port.mk>
