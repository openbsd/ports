# $OpenBSD: Makefile,v 1.3 2001/02/22 06:59:26 obecian Exp $

DISTNAME=	bfbtester-2.0
CATEGORIES=	security
NEED_VERSION= 1.340
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=	bfbtester

HOMEPAGE=	http://bfbtester.sourceforge.net/

MAINTAINER=	Dug Song <dugsong@monkey.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	automake::devel/automake

CONFIGURE_STYLE=	autoconf

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/src/bfbt/bfbtester ${PREFIX}/bin/

.include <bsd.port.mk>
