# $OpenBSD: Makefile,v 1.1.1.1 2012/02/20 16:03:01 sthen Exp $

COMMENT=		top-like monitor for Squid

DISTNAME=		sqtop-2011-11-01
PKGNAME=		sqtop-2011.11.01
CATEGORIES=		www

MAINTAINER=		Gonzalo L. R. <gonzalo@x61.com.ar>

HOMEPAGE=		http://code.google.com/p/sqtop/
EXTRACT_SUFX=		.tar.bz2

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c m ncurses pthread stdc++

MASTER_SITES=		http://sqtop.googlecode.com/files/

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
