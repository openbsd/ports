# $OpenBSD: Makefile,v 1.7 2019/03/12 02:28:06 bentley Exp $

L =	cat
LANG =	Catalan
V =	2.6.0

USE_GMAKE =	Yes

BUILD_DEPENDS +=	textproc/vislcg3
MODULES =		lang/python
SUBST_VARS =		MODPY_BIN

pre-build:
	${SUBST_CMD} ${WRKSRC}/Makefile.in

.include <bsd.port.mk>
