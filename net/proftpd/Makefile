# $OpenBSD: Makefile,v 1.17 2002/04/20 01:40:34 jcs Exp $

COMMENT=	"Apache-like configurable, feature-filled FTP server"

DISTNAME=	proftpd-1.2.5rc1
CATEGORIES=	net
MASTER_SITES=	ftp://ftp.proftpd.org/distrib/

HOMEPAGE=	http://www.proftpd.org/

MAINTAINER=	Jolan Luff <jolan@encryptedemail.net>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

CONFIGURE_STYLE= gnu dest
CONFIGURE_ARGS+= --localstatedir=/var/run

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/proftpd
	${INSTALL_DATA} ${WRKSRC}/sample-configurations/*.conf \
                ${PREFIX}/share/examples/proftpd

.include <bsd.port.mk>
