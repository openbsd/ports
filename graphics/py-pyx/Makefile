# $OpenBSD: Makefile,v 1.1.1.1 2007/12/31 11:32:30 eric Exp $

COMMENT=	package for creating PostScript/PDF graphics

V=0.10
DISTNAME=	PyX-${V}
PKGNAME=	py-pyx-${V}
CATEGORIES=	graphics devel

HOMEPAGE=	http://pyx.sourceforge.net/

MAINTAINER=	Laurence Tratt <laurie@tratt.net>

MODULES=	lang/python

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pyx/}

RUN_DEPENDS=	::print/texlive/base ::graphics/py-Imaging

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
