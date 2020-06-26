# $OpenBSD: Makefile,v 1.20 2020/06/26 10:32:15 solene Exp $

COMMENT =	lightweight irc server

DISTNAME =	ngircd-26

CATEGORIES =	net

HOMEPAGE =	https://ngircd.barton.de/

MAINTAINER =	Michael <michi+openbsd@dataswamp.org>

# GPLv2
PERMIT_PACKAGE =	Yes

# use pledge()
WANTLIB =	c crypto iconv ssl z

MASTER_SITES =	https://ngircd.barton.de/pub/ngircd/ \
		https://ngircd.mirror.3rz.org/pub/ngircd/ \
		https://ngircd.sourceforge.io/pub/ngircd/

LIB_DEPENDS =	converters/libiconv
TEST_DEPENDS =	lang/expect \
		${BASE_PKGPATH}

SYSCONFDIR =	${BASESYSCONFDIR}/ngircd

CONFIGURE_STYLE = gnu
CONFIGURE_ARGS += --with-iconv=${LOCALBASE} \
		  --with-openssl \
		  --enable-ipv6

.include <bsd.port.mk>
