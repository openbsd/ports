# $OpenBSD: Makefile,v 1.2 2013/01/19 20:40:56 fgsch Exp $

COMMENT =	lightweight irc server

DISTNAME =	ngircd-20.1

CATEGORIES =	net

HOMEPAGE =	http://ngircd.barton.de/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	c crypto ssl z

MASTER_SITES =	ftp://ftp.berlios.de/pub/ngircd/ \
		http://ngircd.barton.de/pub/ngircd/

REGRESS_DEPENDS = lang/expect \
		  ${BASE_PKGPATH}

CONFIGURE_STYLE = gnu
CONFIGURE_ARGS += --with-openssl \
		  --enable-ipv6

.include <bsd.port.mk>
