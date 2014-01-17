# $OpenBSD: Makefile,v 1.9 2014/01/17 20:26:02 naddy Exp $

COMMENT=	test VT100-type terminal

DISTNAME=	vttest-20140116
CATEGORIES=	misc
HOMEPAGE=	http://invisible-island.net/vttest/vttest.html

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	ftp://invisible-island.net/vttest/
EXTRACT_SUFX=	.tgz

WANTLIB=	c

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu
MAKE_FILE=	makefile

.include <bsd.port.mk>
