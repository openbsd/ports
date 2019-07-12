# $OpenBSD: Makefile,v 1.45 2019/07/12 20:45:59 sthen Exp $

COMMENT=		Ruby interface to ncurses

VERSION=		1.2.4
DISTNAME=		ncurses-ruby-${VERSION}
PKGNAME=		ncurses-${VERSION}
REVISION =		2
CATEGORIES=		devel

HOMEPAGE=		https://github.com/eclubb/ncurses-ruby

# LGPL 2.1
PERMIT_PACKAGE=	Yes

WANTLIB=		form menu curses panel

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem ext

.include <bsd.port.mk>
