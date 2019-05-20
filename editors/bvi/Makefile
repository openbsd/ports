# $OpenBSD: Makefile,v 1.20 2019/05/20 20:52:32 sthen Exp $

COMMENT=	binary visual display editor, based on vi

DISTNAME=	bvi-1.4.0
CATEGORIES=	editors
HOMEPAGE=	http://bvi.sourceforge.net/
REVISION=	0

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c curses

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=bvi/}
EXTRACT_SUFX=	.src.tar.gz

CONFIGURE_STYLE=gnu

NO_TEST=	Yes

.include <bsd.port.mk>
