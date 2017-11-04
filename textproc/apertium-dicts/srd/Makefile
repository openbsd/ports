# $OpenBSD: Makefile,v 1.1.1.1 2017/11/04 00:01:02 bentley Exp $

L =	srd
LANG =	Sardinian
V =	1.2.0

USE_GMAKE =	Yes

BUILD_DEPENDS +=	textproc/vislcg3
MODULES =		lang/python
SUBST_VARS =		MODPY_BIN

pre-build:
	${SUBST_CMD} ${WRKSRC}/Makefile.in

.include <bsd.port.mk>
