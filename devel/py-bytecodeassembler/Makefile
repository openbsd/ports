# $OpenBSD: Makefile,v 1.7 2013/03/11 10:50:25 espie Exp $

COMMENT =		python bytecode assembler

MODPY_EGG_VERSION =	0.6
DISTNAME =		BytecodeAssembler-${MODPY_EGG_VERSION}
PKGNAME =		py-bytecodeassembler-${MODPY_EGG_VERSION}

CATEGORIES =		devel

HOMEPAGE =		http://peak.telecommunity.com/DevCenter/BytecodeAssembler

MAINTAINER =		Martynas Venckus <martynas@openbsd.org>

# PSF
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=B/BytecodeAssembler/}
EXTRACT_SUFX =		.zip
UNZIP =			unzip -a

MODULES =		lang/python
RUN_DEPENDS =		devel/py-decoratortools \
			devel/py-symboltype
BUILD_DEPENDS =		${RUN_DEPENDS}

MODPY_SETUPTOOLS =	Yes

post-extract:
	@find ${WRKSRC} -type f -exec chmod 644 {} \;

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-bytecodeassembler
	${INSTALL_DATA} ${WRKSRC}/README.txt \
		${PREFIX}/share/doc/py-bytecodeassembler/

.include <bsd.port.mk>
