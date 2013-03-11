# $OpenBSD: Makefile,v 1.43 2013/03/11 01:30:26 espie Exp $

COMMENT=	manage remote serial consoles via TCP/IP

DISTNAME=	conserver-8.1.16
REVISION=	7
CATEGORIES=	comms

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

HOMEPAGE=	http://www.conserver.com/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c ssl crypto util

MASTER_SITES=	ftp://ftp.conserver.com/conserver/

AUTOCONF_VERSION= 2.59
CONFIGURE_STYLE= autoconf
CONFIGURE_ARGS=	--with-openssl		\
		--with-master=localhost

TEST_TARGET=	test

.include <bsd.port.mk>
