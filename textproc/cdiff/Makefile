# $OpenBSD: Makefile,v 1.1.1.1 2015/04/29 12:01:32 ajacoutot Exp $

COMMENT=		inline and side-by-side colored and incremental diff

MODPY_EGG_VERSION=	0.9.7
DISTNAME=		cdiff-${MODPY_EGG_VERSION}

CATEGORIES=		textproc

HOMEPAGE=		https://github.com/ymattw/cdiff

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

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
