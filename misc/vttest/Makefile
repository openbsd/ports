# $OpenBSD: Makefile,v 1.23 2020/12/28 16:22:35 naddy Exp $

COMMENT=	test VT100-type terminal

DISTNAME=	vttest-20201225
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
