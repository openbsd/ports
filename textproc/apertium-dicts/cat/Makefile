# $OpenBSD: Makefile,v 1.4 2017/10/10 04:52:20 bentley Exp $

L =	cat
LANG =	Catalan
V =	2.3.0

USE_GMAKE =	Yes

BUILD_DEPENDS +=	textproc/vislcg3
MODULES =		lang/python
SUBST_VARS =		MODPY_BIN

pre-build:
	${SUBST_CMD} ${WRKSRC}/Makefile.in

.include <bsd.port.mk>
