# $OpenBSD: Makefile,v 1.13 2013/11/09 23:19:02 naddy Exp $

VERSION =	2.54
REVISION = 	4

BUILD_DEPENDS =		devel/help2man

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--without-lispdir
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/config

NO_TEST=		Yes

.include <bsd.port.mk>
