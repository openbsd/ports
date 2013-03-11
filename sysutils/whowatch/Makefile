# $OpenBSD: Makefile,v 1.17 2013/03/11 11:41:33 espie Exp $

COMMENT=	interactive utility that displays info about online users

DISTNAME=	whowatch-1.4
REVISION =	2
CATEGORIES=	sysutils

HOMEPAGE=	http://wizard.ae.krakow.pl/~mike/

MASTER_SITES=	http://wizard.ae.krakow.pl/~mike/download/ \
		http://janek.ae.krakow.pl/~suszyckm/download/ \
		${MASTER_SITE_PACKETSTORM:=UNIX/IDS/}

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c kvm ncurses

CONFIGURE_STYLE= autoconf dest
AUTOCONF_VERSION=2.13
USE_GROFF =	Yes

NO_TEST=	Yes

.include <bsd.port.mk>
