# $OpenBSD: Makefile,v 1.47 2014/10/07 12:51:35 sthen Exp $

COMMENT=	manage remote serial consoles via TCP/IP

DISTNAME=	conserver-8.1.20
REVISION=	0
CATEGORIES=	comms

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

HOMEPAGE=	http://www.conserver.com/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c ssl crypto util

MASTER_SITES=	${HOMEPAGE} \
		ftp://ftp.conserver.com/conserver/

AUTOCONF_VERSION= 2.68
CONFIGURE_STYLE= autoconf
CONFIGURE_ARGS=	--with-openssl \
		--with-pidfile=${LOCALSTATEDIR}/run/conserver/conserver.pid \
		--with-master=localhost \
		--with-port=3109

post-install:
	${INSTALL_DATA} ${FILESDIR}/console.cf \
	    ${WRKSRC}/conserver.cf/samples/* \
	    ${PREFIX}/share/examples/conserver/

TEST_TARGET=	test

.include <bsd.port.mk>
