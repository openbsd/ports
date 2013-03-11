# $OpenBSD: Makefile,v 1.5 2013/03/11 11:37:54 espie Exp $

COMMENT =		merge, split, rotate and crop PDF documents
DISTNAME =		pdfshuffler-0.5.1
REVISION =		2
CATEGORIES =		print

HOMEPAGE =		http://sourceforge.net/projects/pdfshuffler/

MAINTAINER =		Ido Admon <idoadm@gmail.com>

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
