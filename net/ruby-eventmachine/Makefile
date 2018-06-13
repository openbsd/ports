# $OpenBSD: Makefile,v 1.28 2018/06/13 22:26:52 jeremy Exp $

COMMENT=	event-driven I/O for Ruby using the Reactor pattern

DISTNAME=	eventmachine-1.2.5
REVISION =	0
CATEGORIES=	net devel

HOMEPAGE=	http://rubyeventmachine.com/

# ruby or gpl2
PERMIT_PACKAGE_CDROM=	yes

MODULES=	lang/ruby

WANTLIB=	crypto ssl ${COMPILER_LIBCXX}

CONFIGURE_STYLE=ruby gem ext

MODRUBY_TEST =	rake

TEST_DEPENDS =	${FULLPKGNAME}:${BUILD_PKGPATH}

do-test:
	cd ${WRKSRC} && ${RUBY} -I tests \
		-e 'ARGV.each{|f| require f}' -- ./tests/test_*.rb

.include <bsd.port.mk>
