# $OpenBSD: Makefile,v 1.1.1.1 2011/05/22 19:37:04 landry Exp $

COMMENT =		merge, split, rotate and crop PDF documents
DISTNAME =		pdfshuffler-0.5.1
CATEGORIES =		print

HOMEPAGE =		http://sourceforge.net/projects/pdfshuffler/

MAINTAINER =		Ido Admon <idoadm@gmail.com>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=pdfshuffler/}

RUN_DEPENDS = 		print/py-poppler \
			textproc/py-pdf \
			devel/desktop-file-utils

MODULES =		lang/python

NO_REGRESS =	Yes

.include <bsd.port.mk>
