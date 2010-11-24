# $OpenBSD: Makefile,v 1.4 2010/11/24 21:35:13 jeremy Exp $

COMMENT=		small RSpec clone

DISTNAME=		bacon-1.1.0
REVISION =		2
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

MODRUBY_REGRESS=	rake

.include <bsd.port.mk>
