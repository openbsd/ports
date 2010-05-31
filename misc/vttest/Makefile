# $OpenBSD: Makefile,v 1.3 2010/05/31 19:11:45 naddy Exp $

COMMENT=	test VT100-type terminal

DISTNAME=	vttest-20100528
CATEGORIES=	misc
HOMEPAGE=	http://invisible-island.net/vttest/vttest.html

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://invisible-island.net/vttest/
EXTRACT_SUFX=	.tgz

WANTLIB=	c

SEPARATE_BUILD=	simple
CONFIGURE_STYLE=gnu
MAKE_FILE=	makefile

.include <bsd.port.mk>
