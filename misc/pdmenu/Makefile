# $OpenBSD: Makefile,v 1.5 2001/05/08 00:09:39 matt Exp $

COMMENT=		"simple slang-based menu program"

DISTNAME=		pdmenu_1.2.65
PKGNAME=		pdmenu-1.2.65
CATEGORIES=     	misc
NEED_VERSION=		1.405

HOMEPAGE=		http://kitenet.net/programs/pdmenu/
MAINTAINER=		Matt Behrens <matt@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://kitenet.net/programs/code/pdmenu/

LIB_DEPENDS=		slang.14::devel/libslang

FAKE_FLAGS=		INSTALL_PREFIX=${WRKINST}

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		SLANG_LIB_LOC=${LOCALBASE}/lib \
			SLANG_H_LOC=${LOCALBASE}/include/slang.h
WRKDIST=		${WRKDIR}/pdmenu

.include <bsd.port.mk>
