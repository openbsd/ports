# $OpenBSD: Makefile,v 1.18 2013/03/11 11:02:49 espie Exp $

COMMENT=	binary visual display editor, based on vi

DISTNAME=	bvi-1.3.2
REVISION=	0
CATEGORIES=	editors
HOMEPAGE=	http://bvi.sourceforge.net/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c ncurses

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=bvi/}
EXTRACT_SUFX=	.src.tar.gz

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--libdir=${PREFIX}/share

NO_TEST=	Yes

.include <bsd.port.mk>
