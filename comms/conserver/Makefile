# $OpenBSD: Makefile,v 1.36 2010/11/07 20:47:08 jasper Exp $

COMMENT=	manage remote serial consoles via TCP/IP

DISTNAME=	conserver-8.1.16
REVISION=	1
CATEGORIES=	comms

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

HOMEPAGE=	http://www.conserver.com/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c ssl crypto util

MASTER_SITES=	ftp://ftp.conserver.com/conserver/

AUTOCONF_VERSION= 2.59
CONFIGURE_STYLE= autoconf
CONFIGURE_ARGS=	--with-64bit 		\
		--with-openssl 		\
		--with-master=localhost
USE_GROFF =	Yes

REGRESS_TARGET=	test

.include <bsd.port.mk>
