# $OpenBSD: Makefile,v 1.7 2001/11/14 13:58:34 wilfried Exp $

COMMENT=		'themes and icons for Window Maker'

DISTNAME=		WindowMaker-extra-0.1
PKGNAME=		${DISTNAME:L}
CATEGORIES=		x11 x11/windowmaker
NEED_VERSION=		1.482

HOMEPAGE=		http://www.windowmaker.org/

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_WINDOWMAKER}
MASTER_SITE_SUBDIR=	source/release

RUN_DEPENDS=		:windowmaker-*:x11/windowmaker

USE_X11=		Yes
NO_REGRESS=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--prefix="${PREFIX}"

NO_BUILD=		Yes

.include <bsd.port.mk>
