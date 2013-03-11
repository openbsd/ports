# $OpenBSD: Makefile,v 1.19 2013/03/11 11:46:16 espie Exp $

COMMENT=		themes and icons for Window Maker

DISTNAME=		WindowMaker-extra-0.1
PKGNAME=		${DISTNAME:L}
REVISION=		2
CATEGORIES=		x11 x11/windowmaker

HOMEPAGE=		http://www.windowmaker.info/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_WINDOWMAKER:=source/release/}

RUN_DEPENDS=		x11/windowmaker

NO_TEST=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--prefix="${PREFIX}"

NO_BUILD=		Yes
PKG_ARCH=		*

.include <bsd.port.mk>
