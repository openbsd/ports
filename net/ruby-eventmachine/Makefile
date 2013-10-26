# $OpenBSD: Makefile,v 1.16 2013/10/26 23:55:37 jeremy Exp $

COMMENT=	event-driven I/O for Ruby using the Reactor pattern

DISTNAME=	eventmachine-0.12.8
REVISION =	7
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
