# $OpenBSD: Makefile,v 1.24 2004/11/04 22:14:11 alek Exp $

NOT_FOR_ARCHS=		${NO_SHARED_ARCHS}

COMMENT=		"Python imaging library"
COMMENT-examples=	"examples for Python imaging library"

VERSION=		1.1.4
DISTNAME=		Imaging-${VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		graphics

HOMEPAGE=		http://www.pythonware.com/products/pil/

MAINTAINER=	Aleksander Piotrowski <alek@openbsd.org>

# PIL Software License
# Permission to use, copy, modify and distribute freely.
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.pythonware.net/storage/

MODULES=		lang/python

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		${MODPY_TKINTER_DEPENDS}
LIB_DEPENDS=		jpeg.62::graphics/jpeg \
			tk84::x11/tk/8.4

MULTI_PACKAGES=		-examples
SUBPACKAGE?=

PKGNAME-examples=	py-Imaging-examples-${VERSION}
.if defined(PACKAGING) && ${SUBPACKAGE} == "-examples"
RUN_DEPENDS=		:py-Imaging-*:graphics/py-Imaging
LIB_DEPENDS=
PKG_ARCH=		*
.endif

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-jpeg=${LOCALBASE}/lib

LIB_IMAGING=		${WRKSRC}/libImaging
PIL_INCLUDES=		ImConfig.h ImPlatform.h Imaging.h

do-configure:
	@perl -pi -e "s|!LOCALBASE!|${LOCALBASE}|g; s|!X11BASE!|${X11BASE}|g" \
		${WRKSRC}/setup.py
	@cd ${LIB_IMAGING}; ${SETENV} ${CONFIGURE_ENV} \
		./configure ${CONFIGURE_ARGS}

pre-build:
	@cd ${LIB_IMAGING} && \
		${MAKE_ENV} ${MAKE_PROGRAM} CC="${CC}" OPT="${CFLAGS}"

post-install:
	${INSTALL_SCRIPT_DIR} ${PREFIX}/share/examples/py-Imaging
	for file in ${WRKSRC}/Scripts/*; do \
		${INSTALL_SCRIPT} $$file \
			${PREFIX}/share/examples/py-Imaging; \
	done
	${INSTALL_DATA_DIR} ${WRKINST}${MODPY_INCDIR}
.for a in ${PIL_INCLUDES}
	${INSTALL_DATA} ${LIB_IMAGING}/$a ${WRKINST}${MODPY_INCDIR}
.endfor

do-regress: fake
	@cd ${LIB_IMAGING} && ./coretest
	@cd ${WRKSRC} && \
		${MAKE_ENV} PYTHONPATH=${WRKINST}${MODPY_SITEPKG}/PIL \
		${MODPY_BIN} ./selftest.py

.include <bsd.port.mk>
