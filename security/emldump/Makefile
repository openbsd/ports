# $OpenBSD: Makefile,v 1.6 2021/02/23 19:39:38 sthen Exp $

COMMENT =	analyze MIME files

MODPY_EGG_VERSION =	0.0.10
DISTNAME =	emldump_V${MODPY_EGG_VERSION:S/./_/g}
PKGNAME =	emldump-${MODPY_EGG_VERSION}
REVISION =	1

CATEGORIES =	security

HOMEPAGE =	http://blog.didierstevens.com/my-software/#emldump

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# public domain
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://didierstevens.com/files/software/

EXTRACT_SUFX =	.zip

MODULES =	lang/python
RUN_DEPENDS =	security/yara/python${MODPY_FLAVOR}

NO_BUILD =	Yes
NO_TEST =	Yes

MODPY_ADJ_FILES += emldump.py

WRKDIST =	${WRKDIR}

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/emldump.py ${PREFIX}/bin/emldump

.include <bsd.port.mk>
