# $OpenBSD: Makefile,v 1.6 2013/04/26 21:27:30 kili Exp $

COMMENT =		merge, split, rotate and crop PDF documents
DISTNAME =		pdfshuffler-0.5.1
REVISION =		3
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
