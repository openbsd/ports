# $OpenBSD: Makefile,v 1.17 2014/01/11 22:51:02 jeremy Exp $

COMMENT=	event-driven I/O for Ruby using the Reactor pattern

DISTNAME=	eventmachine-0.12.8
REVISION =	8
CATEGORIES=	net devel

HOMEPAGE=	http://rubyeventmachine.com/

# ruby or gpl2
PERMIT_PACKAGE_CDROM=	yes

MODULES=	lang/ruby

WANTLIB=	crypto ssl stdc++

CONFIGURE_STYLE=ruby gem ext

MODRUBY_TEST =	rake

do-test:
	cd ${WRKSRC} && RUBYOPT=-Ilib:. ${RAKE} default

.include <bsd.port.mk>
