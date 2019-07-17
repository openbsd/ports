# $OpenBSD: Makefile,v 1.22 2019/07/17 14:39:42 danj Exp $

COMMENT=	logs smurf attacks
DISTNAME=	smurflog-2.1
REVISION =	1
CATEGORIES=	net security

MASTER_SITES=	${MASTER_SITE_PACKETSTORM:=UNIX/loggers/}

PERMIT_PACKAGE=	Yes
WANTLIB=		c pcap

AUTOCONF_VERSION=	2.13
CONFIGURE_STYLE=	autoconf no-autoheader

NO_TEST=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/smurflog/
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/smurflog/
	${INSTALL_PROGRAM} ${WRKSRC}/smurflog ${PREFIX}/sbin/smurflog

.include <bsd.port.mk>
