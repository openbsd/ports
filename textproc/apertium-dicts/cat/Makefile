# $OpenBSD: Makefile,v 1.5 2017/10/31 09:51:28 bentley Exp $

L =	cat
LANG =	Catalan
V =	2.3.1

USE_GMAKE =	Yes

BUILD_DEPENDS +=	textproc/vislcg3
MODULES =		lang/python
SUBST_VARS =		MODPY_BIN

pre-build:
	${SUBST_CMD} ${WRKSRC}/Makefile.in

.include <bsd.port.mk>
