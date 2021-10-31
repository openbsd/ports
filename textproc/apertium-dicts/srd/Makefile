# $OpenBSD: Makefile,v 1.3 2021/10/31 12:09:47 bentley Exp $

L =	srd
LANG =	Sardinian
V =	1.2.0

MASTER_SITES =	https://apertium.org/releases/apertium-$L/

USE_GMAKE =	Yes

BUILD_DEPENDS +=	textproc/vislcg3
MODULES =		lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}
SUBST_VARS =		MODPY_BIN

pre-build:
	${SUBST_CMD} ${WRKSRC}/Makefile.in

.include <bsd.port.mk>
