# $OpenBSD: Makefile,v 1.42 2016/11/04 21:26:38 jeremy Exp $

COMMENT=		Ruby interface to ncurses

VERSION=		1.2.4
DISTNAME=		ncurses-ruby-${VERSION}
PKGNAME=		ncurses-${VERSION}
REVISION =		0
CATEGORIES=		devel

HOMEPAGE=		https://github.com/eclubb/ncurses-ruby

# LGPL 2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		form menu ncurses panel

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem ext

.include <bsd.port.mk>
