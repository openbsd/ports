# $OpenBSD: Makefile,v 1.14 2004/02/01 07:20:04 marcm Exp $

COMMENT=		"tool for managing library compile/link flags"

VERSION=		0.15.0
DISTNAME=		pkgconfig-${VERSION}
CATEGORIES=		devel

HOMEPAGE=		http://www.freedesktop.org/software/pkgconfig/
MASTER_SITES=		${HOMEPAGE}releases/ \
			${MASTER_SITE_GNOME:=sources/pkgconfig/0.15/}

MAINTAINER=		Marc Matteo <marcm@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# hppa's segfault with the included glib, so for them we'll
# statically link with devel/glib.
.if (${MACHINE_ARCH} == "hppa")
PATCH_LIST=     patch-* sup-hppa-*
BUILD_DEPENDS=	:glib-*:devel/glib
.endif

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
