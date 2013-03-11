# $OpenBSD: Makefile,v 1.37 2013/03/11 10:50:30 espie Exp $

COMMENT=		Ruby interface to ncurses

VERSION=		1.2.1
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
