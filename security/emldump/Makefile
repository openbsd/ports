# $OpenBSD: Makefile,v 1.1.1.1 2016/06/14 19:04:12 rpointel Exp $

COMMENT =	analyze MIME files

MODPY_EGG_VERSION =	0.0.9
DISTNAME =	emldump_V${MODPY_EGG_VERSION:S/./_/g}
PKGNAME =	emldump-${MODPY_EGG_VERSION}

CATEGORIES =	security

HOMEPAGE =	http://blog.didierstevens.com/my-software/#emldump

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# public domain
PERMIT_PACKAGE_CDROM =	Yes

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
