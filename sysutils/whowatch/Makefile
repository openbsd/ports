# $OpenBSD: Makefile,v 1.8 2004/12/20 10:35:36 alek Exp $

COMMENT=	"interactive utility that displays info about online users"

DISTNAME=	whowatch-1.4
CATEGORIES=	sysutils

HOMEPAGE=	http://wizard.ae.krakow.pl/~mike/

MASTER_SITES=	http://wizard.ae.krakow.pl/~mike/download/ \
		http://janek.ae.krakow.pl/~suszyckm/download/ \
		${MASTER_SITE_PACKETSTORM:=UNIX/IDS/}

MAINTAINER=	Margarida Sequeira <margarida@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c kvm ncurses

CONFIGURE_STYLE= gnu dest

NO_REGRESS=	Yes

.include <bsd.port.mk>
