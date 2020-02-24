# $OpenBSD: Makefile,v 1.19 2020/02/24 10:30:16 solene Exp $

COMMENT =	lightweight irc server

DISTNAME =	ngircd-25

REVISION =	0

CATEGORIES =	net

HOMEPAGE =	https://ngircd.barton.de/

MAINTAINER =	Giannis Tsaraias <tsg@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

# use pledge()
WANTLIB =	c crypto iconv ssl z

MASTER_SITES =	http://ngircd.barton.de/pub/ngircd/ \
		http://ngircd.mirror.3rz.org/pub/ngircd/

LIB_DEPENDS =	converters/libiconv
TEST_DEPENDS =	lang/expect \
		${BASE_PKGPATH}

SYSCONFDIR =	${BASESYSCONFDIR}/ngircd

CONFIGURE_STYLE = gnu
CONFIGURE_ARGS += --with-iconv=${LOCALBASE} \
		  --with-openssl \
		  --enable-ipv6

.include <bsd.port.mk>
