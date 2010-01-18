# $OpenBSD: Makefile,v 1.12 2010/01/18 12:07:45 sthen Exp $

COMMENT=	interactive utility that displays info about online users

DISTNAME=	whowatch-1.4
PKGNAME=	${DISTNAME}p1
CATEGORIES=	sysutils

HOMEPAGE=	http://wizard.ae.krakow.pl/~mike/

MASTER_SITES=	http://wizard.ae.krakow.pl/~mike/download/ \
		http://janek.ae.krakow.pl/~suszyckm/download/ \
		${MASTER_SITE_PACKETSTORM:=UNIX/IDS/}

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c kvm ncurses

CONFIGURE_STYLE= autoconf gnu dest
AUTOCONF_VERSION=2.13

NO_REGRESS=	Yes

.include <bsd.port.mk>
