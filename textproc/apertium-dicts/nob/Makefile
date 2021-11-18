# $OpenBSD: Makefile,v 1.8 2021/11/18 12:07:25 bentley Exp $

L =	nob
LANG =	Norwegian Bokmal
V =	1.1.0
REVISION =	0

BUILD_DEPENDS +=	textproc/vislcg3

USE_GMAKE =	Yes

AUTOCONF_VERSION =	2.71
AUTOMAKE_VERSION =	1.16

CONFIGURE_STYLE =	autoreconf

pre-configure:
	${SUBST_CMD} ${WRKSRC}/test-scandivoc

.include <bsd.port.mk>
