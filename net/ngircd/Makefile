# $OpenBSD: Makefile,v 1.11 2014/12/03 10:32:18 jasper Exp $

COMMENT =	lightweight irc server

DISTNAME =	ngircd-22

CATEGORIES =	net

HOMEPAGE =	http://ngircd.barton.de/

MAINTAINER =	Federico G. Schwindt <fgsch@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c crypto ssl z

MASTER_SITES =	http://ngircd.barton.de/pub/ngircd/ \
		http://ngircd.mirror.3rz.org/pub/ngircd/

MODULES =	converters/libiconv
TEST_DEPENDS =	lang/expect \
		${BASE_PKGPATH}

SYSCONFDIR =	${BASESYSCONFDIR}/ngircd

CONFIGURE_STYLE = gnu
CONFIGURE_ARGS += --with-iconv=${LOCALBASE} \
		  --with-openssl \
		  --enable-ipv6

.include <bsd.port.mk>
