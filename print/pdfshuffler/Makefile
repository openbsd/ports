# $OpenBSD: Makefile,v 1.3 2011/06/08 17:37:36 jasper Exp $

COMMENT =		merge, split, rotate and crop PDF documents
DISTNAME =		pdfshuffler-0.5.1
REVISION =		1
CATEGORIES =		print

HOMEPAGE =		http://sourceforge.net/projects/pdfshuffler/

MAINTAINER =		Ido Admon <idoadm@gmail.com>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=pdfshuffler/}

BUILD_DEPENDS = 	devel/gettext
RUN_DEPENDS = 		devel/gettext \
			print/py-poppler \
			textproc/py-pdf \
			devel/desktop-file-utils

MODULES =		lang/python

NO_REGRESS =	Yes

.include <bsd.port.mk>
