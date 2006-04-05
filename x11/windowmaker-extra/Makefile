# $OpenBSD: Makefile,v 1.12 2006/04/05 04:37:00 sturm Exp $

COMMENT=		'themes and icons for Window Maker'

DISTNAME=		WindowMaker-extra-0.1
PKGNAME=		${DISTNAME:L}p0
CATEGORIES=		x11 x11/windowmaker

HOMEPAGE=		http://www.windowmaker.info/

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_WINDOWMAKER:=source/release/}

RUN_DEPENDS=		:windowmaker-*:x11/windowmaker

USE_X11=		Yes
NO_REGRESS=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--prefix="${PREFIX}"

NO_BUILD=		Yes
PKG_ARCH=		*

.include <bsd.port.mk>
