# $OpenBSD: Makefile,v 1.11 2016/04/12 11:41:02 sthen Exp $

COMMENT=	test VT100-type terminal

DISTNAME=	vttest-20140305
CATEGORIES=	misc
HOMEPAGE=	http://invisible-island.net/vttest/vttest.html

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://invisible-mirror.net/archives/vttest/ \
		ftp://invisible-island.net/vttest/
EXTRACT_SUFX=	.tgz

WANTLIB=	c

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu
MAKE_FILE=	makefile

.include <bsd.port.mk>
