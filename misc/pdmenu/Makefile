# $OpenBSD: Makefile,v 1.3 2000/10/23 01:11:18 matt Exp $

DISTNAME=		pdmenu_1.2.61
PKGNAME=		pdmenu-1.2.61
CATEGORIES=     	misc
NEED_VERSION=		1.305

HOMEPAGE=		http://kitenet.net/programs/pdmenu/

MAINTAINER=		Matt Behrens <matt@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://kitenet.net/programs/code/pdmenu/

LIB_DEPENDS=		slang.14::devel/libslang

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		SLANG_LIB_LOC=${LOCALBASE}/lib \
			SLANG_H_LOC=${LOCALBASE}/include/slang.h
FAKE_FLAGS=		INSTALL_PREFIX=${WRKINST}
WRKDIST=		${WRKDIR}/pdmenu

.include <bsd.port.mk>
