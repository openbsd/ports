# $OpenBSD: Makefile,v 1.15 2005/11/03 18:28:56 naddy Exp $

COMMENT=	"logs smurf attacks"
DISTNAME=	smurflog-2.1
CATEGORIES=	net security

MASTER_SITES=	${MASTER_SITE_PACKETSTORM:=UNIX/loggers/}

MAINTAINER=	Todd T. Fries <todd@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c pcap

AUTOCONF_VERSION=	2.13
CONFIGURE_STYLE=	gnu autoconf no-autoheader

NO_REGRESS=	Yes

do-install:
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/README.smurflog
	${INSTALL_PROGRAM} ${WRKSRC}/smurflog ${PREFIX}/sbin/smurflog

.include <bsd.port.mk>
