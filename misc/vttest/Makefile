# $OpenBSD: Makefile,v 1.20 2020/05/15 20:23:43 naddy Exp $

COMMENT=	test VT100-type terminal

DISTNAME=	vttest-20200420
CATEGORIES=	misc
HOMEPAGE=	https://invisible-island.net/vttest/vttest.html

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://invisible-mirror.net/archives/vttest/ \
		ftp://ftp.invisible-island.net/vttest/
EXTRACT_SUFX=	.tgz

WANTLIB=	c

CONFIGURE_STYLE=gnu
MAKE_FILE=	makefile

.include <bsd.port.mk>
