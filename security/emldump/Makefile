# $OpenBSD: Makefile,v 1.4 2020/06/14 10:05:14 jasper Exp $

COMMENT =	analyze MIME files

MODPY_EGG_VERSION =	0.0.10
DISTNAME =	emldump_V${MODPY_EGG_VERSION:S/./_/g}
PKGNAME =	emldump-${MODPY_EGG_VERSION}
REVISION =	0

CATEGORIES =	security

HOMEPAGE =	http://blog.didierstevens.com/my-software/#emldump

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# public domain
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://didierstevens.com/files/software/

EXTRACT_SUFX =	.zip

MODULES =	lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}
RUN_DEPENDS =	security/yara/python${MODPY_FLAVOR}

NO_BUILD =	Yes
NO_TEST =	Yes

MODPY_ADJ_FILES += emldump.py

WRKDIST =	${WRKDIR}

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/emldump.py ${PREFIX}/bin/emldump

.include <bsd.port.mk>
