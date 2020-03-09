# $OpenBSD: Makefile,v 1.18 2020/03/09 22:29:39 naddy Exp $

COMMENT=	test VT100-type terminal

DISTNAME=	vttest-20200303
CATEGORIES=	misc
HOMEPAGE=	http://invisible-island.net/vttest/vttest.html

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

MASTER_SITES=	http://invisible-mirror.net/archives/vttest/ \
		ftp://ftp.invisible-island.net/vttest/
EXTRACT_SUFX=	.tgz

WANTLIB=	c

CONFIGURE_STYLE=gnu
MAKE_FILE=	makefile

.include <bsd.port.mk>
