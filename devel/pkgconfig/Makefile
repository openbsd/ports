# $OpenBSD: Makefile,v 1.13 2003/09/23 05:59:34 marcm Exp $

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

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
