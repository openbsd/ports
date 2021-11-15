# $OpenBSD: Makefile,v 1.9 2021/11/15 04:24:56 bentley Exp $

L =	dan
LANG =	Danish
V =	0.6.1

BUILD_DEPENDS +=	textproc/vislcg3

USE_GMAKE =	Yes

AUTOCONF_VERSION =	2.71
AUTOMAKE_VERSION =	1.16

CONFIGURE_STYLE =	autoreconf

pre-configure:
	${SUBST_CMD} ${WRKSRC}/test-scandivoc

.include <bsd.port.mk>
