# $OpenBSD: Makefile,v 1.7 2002/12/22 01:46:15 margarida Exp $

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

MASTER_SITES=		http://www.sys-security.com/archive/tools/X/

CONFIGURE_STYLE=	gnu
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/cfg-scripts

NO_REGRESS=		Yes

.include <bsd.port.mk>
