# $OpenBSD: Makefile,v 1.13 2020/03/20 16:44:22 naddy Exp $

COMMENT =		python bytecode assembler

MODPY_EGG_VERSION =	0.6.1
DISTNAME =		BytecodeAssembler-${MODPY_EGG_VERSION}
PKGNAME =		py-bytecodeassembler-${MODPY_EGG_VERSION}

CATEGORIES =		devel

HOMEPAGE =		http://peak.telecommunity.com/DevCenter/BytecodeAssembler

# PSF
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes
EXTRACT_SUFX =		.zip
UNZIP =			unzip -a

MODULES =		lang/python
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
