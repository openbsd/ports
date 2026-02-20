COMMENT =	analyze MIME files

REVISION =	0
MODPY_DISTV =	0.0.15
DISTNAME =	emldump_V${MODPY_DISTV:S/./_/g}
PKGNAME =	emldump-${MODPY_DISTV}

CATEGORIES =	security

HOMEPAGE =	https://blog.didierstevens.com/my-software/\#emldump

MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# public domain
PERMIT_PACKAGE =	Yes

SITES =		https://didierstevens.com/files/software/

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
