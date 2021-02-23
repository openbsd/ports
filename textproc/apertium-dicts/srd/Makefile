# $OpenBSD: Makefile,v 1.2 2021/02/23 19:39:44 sthen Exp $

L =	srd
LANG =	Sardinian
V =	1.2.0

USE_GMAKE =	Yes

BUILD_DEPENDS +=	textproc/vislcg3
MODULES =		lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}
SUBST_VARS =		MODPY_BIN

pre-build:
	${SUBST_CMD} ${WRKSRC}/Makefile.in

.include <bsd.port.mk>
