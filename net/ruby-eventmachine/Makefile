# $OpenBSD: Makefile,v 1.10 2011/01/06 04:24:24 jeremy Exp $

COMMENT=	event-driven I/O for Ruby using the Reactor pattern

DISTNAME=	eventmachine-0.12.8
REVISION =	3
CATEGORIES=	net devel

HOMEPAGE=	http://rubyeventmachine.com/

# ruby or gpl2
PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes

MODULES=	lang/ruby

WANTLIB=	crypto ssl stdc++

CONFIGURE_STYLE=ruby gem ext

.include <bsd.port.mk>
