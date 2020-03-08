# $OpenBSD: Makefile,v 1.11 2020/03/08 19:20:45 rpointel Exp $

COMMENT =	parse a PDF document

MODPY_EGG_VERSION =	0.7.4
DISTNAME =	pdf-parser_V${MODPY_EGG_VERSION:S/./_/g}
PKGNAME =	pdf-parser-${MODPY_EGG_VERSION}

CATEGORIES =	security

HOMEPAGE =	http://blog.didierstevens.com/programs/pdf-tools/

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# public domain
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://didierstevens.com/files/software/

EXTRACT_SUFX =	.zip

MODULES =	lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}
RUN_DEPENDS =	security/yara/python

NO_BUILD =	Yes
NO_TEST =	Yes

WRKDIST =	${WRKDIR}

MODPY_ADJ_FILES = pdf-parser.py

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/pdf-parser.py ${PREFIX}/bin/pdf-parser

.include <bsd.port.mk>
