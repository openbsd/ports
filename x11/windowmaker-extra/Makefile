# $OpenBSD: Makefile,v 1.1.1.1 2001/02/15 18:02:14 wilfried Exp $

DISTNAME=	WindowMaker-extra-0.1
PKGNAME=	${DISTNAME:L}
CATEGORIES=	x11 x11/windowmaker
NEED_VERSION=	1.340
HOMEPAGE=	http://www.windowmaker.org/
MASTER_SITES=	${MASTER_SITE_WINDOWMAKER}
MASTER_SITE_SUBDIR= beta/srcs

RUN_DEPENDS=	wmaker::x11/windowmaker

MAINTAINER=	Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

NO_BUILD=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--prefix="${PREFIX}"

.include <bsd.port.mk>
