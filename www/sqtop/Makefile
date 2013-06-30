# $OpenBSD: Makefile,v 1.3 2013/06/30 03:17:43 william Exp $

COMMENT=		top-like monitor for Squid

DISTNAME=		sqtop-2011-11-01
PKGNAME=		sqtop-2011.11.01
REVISION=		0
CATEGORIES=		www

MAINTAINER=		Gonzalo L. R. <gonzalo@openbsd.org>

HOMEPAGE=		http://code.google.com/p/sqtop/
EXTRACT_SUFX=		.tar.bz2

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m ncurses pthread stdc++

MASTER_SITES=		http://sqtop.googlecode.com/files/

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
