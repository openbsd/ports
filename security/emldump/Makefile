# $OpenBSD: Makefile,v 1.3 2019/07/12 20:49:01 sthen Exp $

COMMENT =	analyze MIME files

MODPY_EGG_VERSION =	0.0.10
DISTNAME =	emldump_V${MODPY_EGG_VERSION:S/./_/g}
PKGNAME =	emldump-${MODPY_EGG_VERSION}

CATEGORIES =	security

HOMEPAGE =	http://blog.didierstevens.com/my-software/#emldump

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# public domain
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://didierstevens.com/files/software/

EXTRACT_SUFX =	.zip

MODULES =	lang/python
RUN_DEPENDS =	security/yara/python

NO_BUILD =	Yes
NO_TEST =	Yes

MODPY_ADJ_FILES += emldump.py

WRKDIST =	${WRKDIR}

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/emldump.py ${PREFIX}/bin/emldump

.include <bsd.port.mk>
