# $OpenBSD: Makefile,v 1.9 2021/02/23 19:39:44 sthen Exp $

L =	cat
LANG =	Catalan
V =	2.7.0

USE_GMAKE =	Yes

BUILD_DEPENDS +=	textproc/vislcg3
MODULES =		lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}
SUBST_VARS =		MODPY_BIN

pre-build:
	${SUBST_CMD} ${WRKSRC}/Makefile.in

.include <bsd.port.mk>
