COMMENT =	tool to test a PDF file

MODPY_DISTV =	0.2.7
DISTNAME =	pdfid_v${MODPY_DISTV:S/./_/g}
PKGNAME =	pdfid-${MODPY_DISTV}
REVISION =	4

CATEGORIES =	security

HOMEPAGE =	http://blog.didierstevens.com/programs/pdf-tools/

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# public domain
PERMIT_PACKAGE =	Yes

SITES =		https://didierstevens.com/files/software/

EXTRACT_SUFX =	.zip

MODULES =	lang/python

NO_BUILD =	Yes
NO_TEST =	Yes

WRKDIST =	${WRKDIR}

MODPY_ADJ_FILES = pdfid.py

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/pdfid.py ${PREFIX}/bin/pdfid

.include <bsd.port.mk>
