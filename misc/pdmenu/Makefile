# $OpenBSD: Makefile,v 1.1.1.1 2000/06/02 03:01:17 kevlo Exp $

DISTNAME=		pdmenu_1.2.61
PKGNAME=		pdmenu-1.2.61
CATEGORIES=     	misc
NEED_VERSION=		1.273

HOMEPAGE=		http://kitenet.net/programs/pdmenu/

MAINTAINER=		matt@zigg.com

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://kitenet.net/programs/code/pdmenu/

LIB_DEPENDS=		slang.14::devel/libslang

GNU_CONFIGURE=		Yes
CONFIGURE_ENV=		SLANG_LIB_LOC=${LOCALBASE}/lib \
			SLANG_H_LOC=${LOCALBASE}/include/slang.h
FAKE=			Yes
FAKE_FLAGS=		INSTALL_PREFIX=${WRKINST}
WRKDIST=		${WRKDIR}/pdmenu

.include <bsd.port.mk>
