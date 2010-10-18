# $OpenBSD: Makefile,v 1.4 2010/10/18 20:52:10 espie Exp $

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
USE_GROFF =	Yes

.include <bsd.port.mk>
