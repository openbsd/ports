# $OpenBSD: Makefile,v 1.12 2010/10/18 18:37:00 espie Exp $

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

USE_GROFF =	Yes
NO_REGRESS=		Yes

.include <bsd.port.mk>
