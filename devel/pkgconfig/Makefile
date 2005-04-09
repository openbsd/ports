# $OpenBSD: Makefile,v 1.17 2005/04/09 13:07:43 espie Exp $

COMMENT=		"tool for managing library compile/link flags"

VERSION=		0.15.0
DISTNAME=		pkgconfig-${VERSION}
PKGNAME=		${DISTNAME}p0
CATEGORIES=		devel

HOMEPAGE=		http://www.freedesktop.org/software/pkgconfig/
MASTER_SITES=		${HOMEPAGE}releases/ \
			${MASTER_SITE_GNOME:=sources/pkgconfig/0.15/}

MAINTAINER=		Marc Matteo <marcm@openbsd.org>
MAKE_FLAGS+=		pkglibdir=${LOCALBASE}/lib/pkgconfig:${X11BASE}/lib/pkgconfig

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
