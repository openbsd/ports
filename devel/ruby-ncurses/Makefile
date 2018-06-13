# $OpenBSD: Makefile,v 1.43 2018/06/13 22:26:52 jeremy Exp $

COMMENT=		Ruby interface to ncurses

VERSION=		1.2.4
DISTNAME=		ncurses-ruby-${VERSION}
PKGNAME=		ncurses-${VERSION}
REVISION =		1
CATEGORIES=		devel

HOMEPAGE=		https://github.com/eclubb/ncurses-ruby

# LGPL 2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		form menu ncurses panel

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem ext

.include <bsd.port.mk>
