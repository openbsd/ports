# $OpenBSD: Makefile,v 1.12 2003/01/11 05:53:03 marcm Exp $

COMMENT=		"tool for managing library compile/link flags"

VERSION=		0.14.0
DISTNAME=		pkgconfig-${VERSION}
PKGNAME=		pkgconfig-${VERSION}p1
CATEGORIES=		devel

HOMEPAGE=		http://www.freedesktop.org/software/pkgconfig/
MASTER_SITES=		${HOMEPAGE}releases/ \
			${MASTER_SITE_GNOME:=sources/pkgconfig/0.14/}

MAINTAINER=		Marc Matteo <marcm@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=		:glib->=1.2.8:devel/glib

CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS+=	--with-installed-glib
CONFIGURE_ARGS+=	--no-recursion

.include <bsd.port.mk>
