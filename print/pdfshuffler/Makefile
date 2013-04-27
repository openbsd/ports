# $OpenBSD: Makefile,v 1.7 2013/04/27 17:58:26 sthen Exp $

COMMENT =		merge, split, rotate and crop PDF documents
MODPY_EGG_VERSION =	0.6.0
DISTNAME =		pdfshuffler-${MODPY_EGG_VERSION}
CATEGORIES =		print

HOMEPAGE =		http://sourceforge.net/projects/pdfshuffler/

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=pdfshuffler/}

BUILD_DEPENDS = 	devel/gettext
RUN_DEPENDS = 		devel/gettext \
			print/py-poppler \
			textproc/py-pdf \
			devel/desktop-file-utils

MODULES =		lang/python

NO_TEST =	Yes

.include <bsd.port.mk>
