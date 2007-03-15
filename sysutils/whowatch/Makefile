# $OpenBSD: Makefile,v 1.10 2007/03/15 18:15:12 naddy Exp $

COMMENT=	"interactive utility that displays info about online users"

DISTNAME=	whowatch-1.4
PKGNAME=	${DISTNAME}p0
CATEGORIES=	sysutils

HOMEPAGE=	http://wizard.ae.krakow.pl/~mike/

MASTER_SITES=	http://wizard.ae.krakow.pl/~mike/download/ \
		http://janek.ae.krakow.pl/~suszyckm/download/ \
		${MASTER_SITE_PACKETSTORM:=UNIX/IDS/}

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c kvm ncurses

CONFIGURE_STYLE= gnu dest

NO_REGRESS=	Yes

.include <bsd.port.mk>
