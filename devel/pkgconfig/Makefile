# $OpenBSD: Makefile,v 1.21 2006/12/01 16:30:42 espie Exp $

COMMENT=		"tool for managing library compile/link flags"

VERSION=		0.19
DISTNAME=		pkg-config-${VERSION}
PKGNAME=		pkgconfig-${VERSION}p1
CATEGORIES=		devel

HOMEPAGE=		http://www.freedesktop.org/software/pkgconfig/
MASTER_SITES=		${HOMEPAGE}releases/ \
			${MASTER_SITE_GNOME:=sources/pkg-config/0.19/}

MAINTAINER=		Marc Matteo <marcm@openbsd.org>
CONFIGURE_ARGS+=	--with-pc_path=${LOCALBASE}/lib/pkgconfig:${X11BASE}/lib/pkgconfig

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c
USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
