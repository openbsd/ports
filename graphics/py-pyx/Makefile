# $OpenBSD: Makefile,v 1.5 2010/08/30 21:24:15 jasper Exp $

COMMENT=	package for creating PostScript/PDF graphics

V=0.10
DISTNAME=	PyX-${V}
PKGNAME=	py-pyx-${V}
REVISION=	3
CATEGORIES=	graphics devel

HOMEPAGE=	http://pyx.sourceforge.net/

MAINTAINER=	Laurence Tratt <laurie@tratt.net>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/python
PY_FLAVOR=	python${MODPY_VERSION}

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pyx/}

RUN_DEPENDS=	::print/texlive/base \
		:py-Imaging-*-${PY_FLAVOR}:graphics/py-Imaging,${PY_FLAVOR}

post-install:
	cd ${WRKSRC}/examples && for i in `find . -type d`; do \
		${INSTALL_DATA_DIR} ${PREFIX}/share/examples/pyx/$$i; \
	done
	cd ${WRKSRC}/examples && for i in `find . -type f ! -name "*.orig"`; do \
		${INSTALL_DATA} $$i ${PREFIX}/share/examples/pyx/$$i; \
	done

do-regress: install
	cd ${WRKSRC}/examples && for i in `find . -name "*.py"`; do \
		echo $$i; \
		cd ${WRKSRC}/examples/`dirname $$i`; \
		${MODPY_BIN} `basename $$i`; \
	done

.include <bsd.port.mk>
