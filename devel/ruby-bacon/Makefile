# $OpenBSD: Makefile,v 1.2 2010/10/19 14:48:57 jeremy Exp $

COMMENT=		small RSpec clone

DISTNAME=		bacon-1.1.0
PKGNAME=		ruby-${DISTNAME}
REVISION=		0
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
