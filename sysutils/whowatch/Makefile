# $OpenBSD: Makefile,v 1.20 2019/06/25 20:25:22 sthen Exp $

COMMENT=	interactive utility that displays info about online users

DISTNAME=	whowatch-1.4
REVISION =	4
CATEGORIES=	sysutils

HOMEPAGE=	http://wizard.ae.krakow.pl/~mike/

MASTER_SITES=	http://wizard.ae.krakow.pl/~mike/download/ \
		http://janek.ae.krakow.pl/~suszyckm/download/ \
		${MASTER_SITE_PACKETSTORM:=UNIX/IDS/}

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c kvm curses

CONFIGURE_STYLE= autoconf dest
AUTOCONF_VERSION=2.13

NO_TEST=	Yes

.include <bsd.port.mk>
