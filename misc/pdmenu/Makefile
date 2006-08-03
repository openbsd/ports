# $OpenBSD: Makefile,v 1.13 2006/08/03 20:04:52 espie Exp $

COMMENT=		"simple slang-based menu program"

DISTNAME=		pdmenu_1.2.69
PKGNAME=		pdmenu-1.2.69
CATEGORIES=     	misc

HOMEPAGE=		http://kitenet.net/programs/pdmenu/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m termcap

MASTER_SITES=		http://kitenet.net/programs/code/pdmenu/

LIB_DEPENDS=		slang.>=14::devel/libslang

FAKE_FLAGS=		INSTALL_PREFIX=${WRKINST}

FAKE=			lib
CONFIGURE_STYLE=	autoconf no-autoheader
AUTOCONF_VERSION=	2.13
CONFIGURE_ENV=		SLANG_LIB_LOC=${DEPBASE}/lib \
			SLANG_H_LOC=${DEPBASE}/include/slang.h
WRKDIST=		${WRKDIR}/pdmenu

NO_REGRESS=		Yes

.include <bsd.port.mk>
