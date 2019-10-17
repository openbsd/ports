# $OpenBSD: Makefile,v 1.22 2019/10/17 18:34:27 naddy Exp $

COMMENT=	binary visual display editor, based on vi

DISTNAME=	bvi-1.4.1
CATEGORIES=	editors
HOMEPAGE=	http://bvi.sourceforge.net/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB=	c curses

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=bvi/}
EXTRACT_SUFX=	.src.tar.gz

CONFIGURE_STYLE=gnu

NO_TEST=	Yes

.include <bsd.port.mk>
