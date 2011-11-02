# $OpenBSD: Makefile,v 1.11 2011/11/02 09:57:22 jasper Exp $

COMMENT =	package for creating PostScript/PDF graphics

MODPY_EGG_VERSION = 0.11.1
DISTNAME =	PyX-${MODPY_EGG_VERSION}
PKGNAME =	py-pyx-${MODPY_EGG_VERSION}
CATEGORIES =	graphics devel
REVISION =	2

HOMEPAGE =	http://pyx.sourceforge.net/

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB +=	${MODPY_WANTLIB}

MODULES =	lang/python
PY_FLAVOR =	python${MODPY_VERSION}

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=pyx/}

RUN_DEPENDS =	print/texlive/base \
		py-Imaging-*-${PY_FLAVOR}:graphics/py-Imaging,${PY_FLAVOR}

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
