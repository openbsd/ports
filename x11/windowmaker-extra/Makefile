# $OpenBSD: Makefile,v 1.4 2001/07/09 17:11:27 pvalchev Exp $

COMMENT=		'themes and icons for Window Maker'

DISTNAME=		WindowMaker-extra-0.1
PKGNAME=		${DISTNAME:L}
CATEGORIES=		x11 x11/windowmaker
NEED_VERSION=		1.364

HOMEPAGE=		http://www.windowmaker.org/

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_WINDOWMAKER}
MASTER_SITE_SUBDIR=	beta/srcs

RUN_DEPENDS=		wmaker::x11/windowmaker

USE_X11=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--prefix="${PREFIX}"

NO_BUILD=		Yes

.include <bsd.port.mk>
