# $OpenBSD: Makefile,v 1.11 2007/09/15 22:37:00 merdely Exp $

COMMENT=		ICMP active OS fingerprint scanner

DISTNAME=		xprobe2-0.3
CATEGORIES=    		net security

HOMEPAGE=		http://www.sys-security.com/index.php?page=xprobe

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m pcap stdc++

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=xprobe/}

CONFIGURE_STYLE=	gnu
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/cfg-scripts

NO_REGRESS=		Yes

.include <bsd.port.mk>
