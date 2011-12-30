# $OpenBSD: Makefile,v 1.14 2011/12/30 22:43:54 fgsch Exp $

COMMENT =	package for creating PostScript/PDF graphics

MODPY_EGG_VERSION = 0.11.1
DISTNAME =	PyX-${MODPY_EGG_VERSION}
PKGNAME =	py-pyx-${MODPY_EGG_VERSION}
CATEGORIES =	graphics devel
REVISION =	4

HOMEPAGE =	http://pyx.sourceforge.net/

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB +=	${MODPY_WANTLIB}

MODULES =	lang/python

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=pyx/}

RUN_DEPENDS =	print/texlive/base \
		graphics/py-Imaging

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-pyx
	cd ${WRKSRC}/examples && pax -rw * ${PREFIX}/share/examples/py-pyx

do-regress: install
	cd ${WRKSRC}/examples && for i in `find . -name "*.py"`; do \
		echo $$i; \
		cd ${WRKSRC}/examples/`dirname $$i`; \
		${MODPY_BIN} `basename $$i`; \
	done

.include <bsd.port.mk>
