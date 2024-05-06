COMMENT =	lightweight irc server

DISTNAME =	ngircd-27

CATEGORIES =	net

HOMEPAGE =	https://ngircd.barton.de/

MAINTAINER =	Michael <michi+openbsd@dataswamp.org>

# GPLv2
PERMIT_PACKAGE =	Yes

# use pledge()
WANTLIB =	c crypto iconv ssl z

FLAVORS =	ident
FLAVOR ?=

SITES =		https://ngircd.barton.de/pub/ngircd/ \
		https://ngircd.mirror.3rz.de/pub/ngircd/ \
		https://ngircd.sourceforge.io/pub/ngircd/

LIB_DEPENDS =	converters/libiconv
TEST_DEPENDS =	lang/expect \
		${BASE_PKGPATH}

SYSCONFDIR =	${BASESYSCONFDIR}/ngircd

CONFIGURE_STYLE = gnu
CONFIGURE_ARGS += --with-iconv=${LOCALBASE} \
		  --with-openssl \
		  --enable-ipv6

.if ${FLAVOR:Mident}
LIB_DEPENDS +=	security/libident
WANTLIB +=	ident
CONFIGURE_ARGS += --with-ident=${LOCALBASE}
.endif

.include <bsd.port.mk>
