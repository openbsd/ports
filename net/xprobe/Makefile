# $OpenBSD: Makefile,v 1.5 2002/10/28 01:38:46 naddy Exp $

COMMENT=		"ICMP active OS fingerprint scanner"

DISTNAME=		xprobe-0.0.2
CATEGORIES=    		net security

HOMEPAGE=		http://www.sys-security.com/html/projects/X.html

MAINTAINER=		Mark Grimes <mark@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.sys-security.com/archive/tools/X/

CONFIGURE_STYLE=	gnu
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/cfg-scripts

NO_REGRESS=		Yes

.include <bsd.port.mk>
