# $OpenBSD: Makefile,v 1.8 2019/10/26 08:39:23 rpointel Exp $

COMMENT =	tool to test a PDF file

MODPY_EGG_VERSION =	0.2.6
DISTNAME =	pdfid_v${MODPY_EGG_VERSION:S/./_/g}
PKGNAME =	pdfid-${MODPY_EGG_VERSION}

CATEGORIES =	security

HOMEPAGE =	http://blog.didierstevens.com/programs/pdf-tools/

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# public domain
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://didierstevens.com/files/software/

EXTRACT_SUFX =	.zip

MODULES =	lang/python

NO_BUILD =	Yes
NO_TEST =	Yes

WRKDIST =	${WRKDIR}

MODPY_ADJ_FILES = pdfid.py

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/pdfid.py ${PREFIX}/bin/pdfid

.include <bsd.port.mk>
