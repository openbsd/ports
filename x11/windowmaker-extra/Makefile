# $OpenBSD: Makefile,v 1.18 2012/12/13 16:34:48 naddy Exp $

COMMENT=		themes and icons for Window Maker

DISTNAME=		WindowMaker-extra-0.1
PKGNAME=		${DISTNAME:L}
REVISION=		2
CATEGORIES=		x11 x11/windowmaker

HOMEPAGE=		http://www.windowmaker.info/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_WINDOWMAKER:=source/release/}

RUN_DEPENDS=		x11/windowmaker

NO_REGRESS=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--prefix="${PREFIX}"

NO_BUILD=		Yes
PKG_ARCH=		*

.include <bsd.port.mk>
