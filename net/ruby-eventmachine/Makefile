# $OpenBSD: Makefile,v 1.6 2010/09/28 20:12:18 jeremy Exp $

COMMENT=	event-driven I/O for Ruby using the Reactor pattern

DISTNAME=	eventmachine-0.12.8
PKGNAME=	ruby-${DISTNAME}
REVISION =      0
CATEGORIES=	net devel

HOMEPAGE=	http://rubyeventmachine.com/

# ruby or gpl2
PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes

MODULES=	lang/ruby
LIB_DEPENDS=	${MODRUBY_LIB_DEPENDS}

WANTLIB=	c crypto m ssl stdc++

CONFIGURE_STYLE=ruby gem

.include <bsd.port.mk>
