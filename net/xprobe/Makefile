# $OpenBSD: Makefile,v 1.8 2004/12/16 00:31:27 alek Exp $

COMMENT=		"ICMP active OS fingerprint scanner"

DISTNAME=		xprobe-0.0.2
CATEGORIES=    		net security

HOMEPAGE=		http://www.sys-security.com/html/projects/X.html

MAINTAINER=		Margarida Sequeira <margarida@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c pcap 

MASTER_SITES=		http://www.sys-security.com/archive/tools/X/

CONFIGURE_STYLE=	gnu
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/cfg-scripts

NO_REGRESS=		Yes

.include <bsd.port.mk>
