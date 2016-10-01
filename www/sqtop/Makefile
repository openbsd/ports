# $OpenBSD: Makefile,v 1.5 2016/10/01 11:54:17 naddy Exp $

COMMENT=		top-like monitor for Squid

DISTNAME=		sqtop-2011-11-01
PKGNAME=		sqtop-2011.11.01
REVISION=		1
CATEGORIES=		www

MAINTAINER=		Gonzalo L. R. <gonzalo@openbsd.org>

HOMEPAGE=		https://code.google.com/p/sqtop/
EXTRACT_SUFX=		.tar.bz2

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m ncurses pthread stdc++

MASTER_SITES=		${MASTER_SITE_GOOGLECODE:=sqtop/}

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
