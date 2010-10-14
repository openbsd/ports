# $OpenBSD: Makefile,v 1.1.1.1 2010/10/14 22:55:15 jeremy Exp $

COMMENT=		small RSpec clone

DISTNAME=		bacon-1.1.0
PKGNAME=		ruby-${DISTNAME}
CATEGORIES=		devel

HOMEPAGE=		http://chneukirchen.org/repos/bacon/README

MAINTAINER=		Jeremy Evans <jeremy@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

PKG_ARCH=		*

MODRUBY_REGRESS=	rake

.include <bsd.port.mk>
