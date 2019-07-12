# $OpenBSD: Makefile,v 1.4 2019/07/12 20:47:21 sthen Exp $

MODPY_EGG_VERSION =		2.0.1
COMMENT =	free, cross-platform emulator for GW-BASIC family (PC-BASIC)
DISTNAME =	pcbasic-${MODPY_EGG_VERSION}
CATEGORIES =	lang

HOMEPAGE =	http://www.pc-basic.org/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://github.com/robhagemans/pcbasic/releases/download/v${MODPY_EGG_VERSION}/

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =	devel/py-parallel \
		devel/py-serial \
		devel/sdl2-gfx \
		math/py-numpy

post-extract:
	@gunzip -o ${WRKSRC}/doc/pcbasic.1 \
		${WRKSRC}/doc/pcbasic.1.gz

post-install:
	${INSTALL_MAN} ${WRKSRC}/doc/pcbasic.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pcbasic
	${INSTALL_DATA} ${WRKSRC}/doc/PC-BASIC_documentation.{html,pdf} \
		${PREFIX}/share/doc/pcbasic

.include <bsd.port.mk>
