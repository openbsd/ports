# $OpenBSD: Makefile,v 1.7 2013/08/28 11:53:16 fgsch Exp $

COMMENT =	lightweight irc server

DISTNAME =	ngircd-20.3

CATEGORIES =	net

HOMEPAGE =	http://ngircd.barton.de/

MAINTAINER =	Federico G. Schwindt <fgsch@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c crypto ssl z

MASTER_SITES =	ftp://ftp.berlios.de/pub/ngircd/ \
		http://ngircd.barton.de/pub/ngircd/

TEST_DEPENDS = lang/expect \
		  ${BASE_PKGPATH}

CONFIGURE_STYLE = gnu
CONFIGURE_ARGS += --with-openssl \
		  --enable-ipv6

.include <bsd.port.mk>
