# $OpenBSD: Makefile,v 1.4 2009/08/09 12:27:47 bernd Exp $

COMMENT=	event-driven I/O for Ruby using the Reactor pattern

DISTNAME=	eventmachine-0.12.8
PKGNAME=	ruby-${DISTNAME}
CATEGORIES=	net devel

HOMEPAGE=	http://rubyeventmachine.com/

# ruby or gpl2
PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes

MASTER_SITES=	${MASTER_SITE_RUBYFORGE:=eventmachine/}

MODULES=	lang/ruby
LIB_DEPENDS=	${MODRUBY_LIB_DEPENDS}

WANTLIB=	c crypto m ssl stdc++

CONFIGURE_STYLE=ruby gem

.include <bsd.port.mk>
