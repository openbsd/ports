# $OpenBSD: Makefile,v 1.7 2005/02/07 19:01:50 pvalchev Exp $

COMMENT=		"waimea mini pager"

VERSION=		0.9.1
DISTNAME=		wampager-${VERSION}
CATEGORIES=		x11

HOMEPAGE=		http://www.waimea.org/wampager_info.html

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=waimea/}

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xpm c

USE_X11=		Yes
NO_REGRESS=		Yes

.include <bsd.port.mk>
