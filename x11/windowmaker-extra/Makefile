# $OpenBSD: Makefile,v 1.2 2001/03/09 14:28:52 wilfried Exp $

DISTNAME=		WindowMaker-extra-0.1
PKGNAME=		${DISTNAME:L}
CATEGORIES=		x11 x11/windowmaker
NEED_VERSION=		1.340

HOMEPAGE=		http://www.windowmaker.org/

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_WINDOWMAKER}
MASTER_SITE_SUBDIR=	beta/srcs

RUN_DEPENDS=		wmaker::x11/windowmaker

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--prefix="${PREFIX}"

NO_BUILD=		Yes

.include <bsd.port.mk>
