# $OpenBSD: Makefile,v 1.19 2014/10/27 21:59:32 naddy Exp $

COMMENT=	binary visual display editor, based on vi

DISTNAME=	bvi-1.4.0
CATEGORIES=	editors
HOMEPAGE=	http://bvi.sourceforge.net/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c ncurses

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=bvi/}
EXTRACT_SUFX=	.src.tar.gz

CONFIGURE_STYLE=gnu

NO_TEST=	Yes

.include <bsd.port.mk>
