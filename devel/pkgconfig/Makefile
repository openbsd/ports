# $OpenBSD: Makefile,v 1.10 2002/12/11 17:17:08 marcm Exp $

COMMENT=		"tool for managing library compile/link flags"

VERSION=		0.14.0
DISTNAME=		pkgconfig-${VERSION}
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

.include <bsd.port.mk>
