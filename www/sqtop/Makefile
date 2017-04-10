# $OpenBSD: Makefile,v 1.6 2017/04/10 11:46:35 sthen Exp $

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

WANTLIB += c m ncurses pthread ${LIBCXX}

MASTER_SITES=		${MASTER_SITE_GOOGLECODE:=sqtop/}

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
