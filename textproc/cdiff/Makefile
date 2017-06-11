# $OpenBSD: Makefile,v 1.4 2017/06/11 15:10:09 jasper Exp $

COMMENT=		inline and side-by-side colored and incremental diff

MODPY_EGG_VERSION=	1.0
DISTNAME=		cdiff-${MODPY_EGG_VERSION}

CATEGORIES=		textproc

HOMEPAGE=		https://github.com/ymattw/cdiff

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

MODPY_PI=		Yes

TEST_DEPENDS=		devel/git \
			devel/py-coverage \
			textproc/py-docutils

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/cdiff
	${INSTALL_DATA} ${WRKSRC}/README.rst ${PREFIX}/share/doc/cdiff/

pre-test:
	ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python
	ln -sf ${LOCALBASE}/bin/rst2html ${WRKDIR}/bin/rst2html.py

.include <bsd.port.mk>
