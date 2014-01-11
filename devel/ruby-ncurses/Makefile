# $OpenBSD: Makefile,v 1.39 2014/01/11 22:51:02 jeremy Exp $

COMMENT=		Ruby interface to ncurses

VERSION=		1.2.1
DISTNAME=		ncurses-ruby-${VERSION}
PKGNAME=		ncurses-${VERSION}
REVISION =		2
CATEGORIES=		devel

HOMEPAGE=		https://github.com/eclubb/ncurses-ruby

# LGPL 2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		form menu ncurses panel

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem ext

.include <bsd.port.mk>
