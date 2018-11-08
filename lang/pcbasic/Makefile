# $OpenBSD: Makefile,v 1.1.1.1 2018/11/08 04:27:02 bcallah Exp $

V =		2.0.0
COMMENT =	free, cross-platform emulator for GW-BASIC family (PC-BASIC)
DISTNAME =	pcbasic-${V}
CATEGORIES =	lang

HOMEPAGE =	http://www.pc-basic.org/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://github.com/robhagemans/pcbasic/releases/download/v${V}/

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =	devel/py-parallel \
		devel/py-serial \
		devel/sdl2-gfx \
		math/py-numpy

TEST_DEPENDS =	${RUN_DEPENDS}

post-extract:
	@gunzip -o ${WRKSRC}/doc/pcbasic.1 \
		${WRKSRC}/doc/pcbasic.1.gz

post-install:
	${INSTALL_MAN} ${WRKSRC}/doc/pcbasic.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pcbasic
	${INSTALL_DATA} ${WRKSRC}/doc/PC-BASIC_documentation.{html,pdf} \
		${PREFIX}/share/doc/pcbasic

.include <bsd.port.mk>
