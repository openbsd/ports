# $OpenBSD: Makefile,v 1.9 2005/02/07 19:01:49 pvalchev Exp $

COMMENT=		"ICMP active OS fingerprint scanner"

DISTNAME=		xprobe-0.0.2
CATEGORIES=    		net security

HOMEPAGE=		http://www.sys-security.com/html/projects/X.html

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
