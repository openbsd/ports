# $OpenBSD: Makefile,v 1.41 2015/07/26 03:39:53 jeremy Exp $

COMMENT=		Ruby interface to ncurses

VERSION=		1.2.4
DISTNAME=		ncurses-ruby-${VERSION}
PKGNAME=		ncurses-${VERSION}
CATEGORIES=		devel

HOMEPAGE=		https://github.com/eclubb/ncurses-ruby

# LGPL 2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		form menu ncurses panel

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem ext

.include <bsd.port.mk>
