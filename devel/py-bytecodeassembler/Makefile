# $OpenBSD: Makefile,v 1.15 2021/05/21 19:50:24 kmos Exp $

COMMENT =		python bytecode assembler

MODPY_EGG_VERSION =	0.6.1
DISTNAME =		BytecodeAssembler-${MODPY_EGG_VERSION}
PKGNAME =		py-bytecodeassembler-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		http://peak.telecommunity.com/DevCenter/BytecodeAssembler

# PSF
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes
EXTRACT_SUFX =		.zip
UNZIP =			unzip -a

MODULES =		lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}
RUN_DEPENDS =		devel/py-decoratortools \
			devel/py-symboltype
BUILD_DEPENDS =		${RUN_DEPENDS}

MODPY_SETUPTOOLS =	Yes

post-extract:
	@find ${WRKSRC} -type f -exec chmod 644 {} +

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-bytecodeassembler
	${INSTALL_DATA} ${WRKSRC}/README.txt \
		${PREFIX}/share/doc/py-bytecodeassembler/

.include <bsd.port.mk>
