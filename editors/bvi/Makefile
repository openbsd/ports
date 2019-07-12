# $OpenBSD: Makefile,v 1.21 2019/07/12 20:46:04 sthen Exp $

COMMENT=	binary visual display editor, based on vi

DISTNAME=	bvi-1.4.0
CATEGORIES=	editors
HOMEPAGE=	http://bvi.sourceforge.net/
REVISION=	0

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB=	c curses

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=bvi/}
EXTRACT_SUFX=	.src.tar.gz

CONFIGURE_STYLE=gnu

NO_TEST=	Yes

.include <bsd.port.mk>
