# $OpenBSD: Makefile,v 1.3 2017/08/07 11:02:50 bentley Exp $

L =	cat
LANG =	Catalan
V =	2.2.0

USE_GMAKE =	Yes

BUILD_DEPENDS +=	textproc/vislcg3
MODULES =		lang/python
SUBST_VARS =		MODPY_BIN

pre-build:
	${SUBST_CMD} ${WRKSRC}/Makefile.in

.include <bsd.port.mk>
