# $OpenBSD: Makefile,v 1.10 2014/01/15 02:13:58 jeremy Exp $

COMMENT =	real-time stats toolkit for Rack HTTP servers

DISTNAME =	raindrops-0.10.0
REVISION =	3
CATEGORIES =	www

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# LGPLv2.1/LGPLv3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/ruby

CONFIGURE_STYLE =	ruby gem ext

# XXX only actually required for gcc2/3 arch
BUILD_DEPENDS +=	libatomic_ops-*:devel/boehm-gc,-atomic

TEST_DEPENDS =	devel/gmake \
			www/ruby-unicorn,${MODRUBY_FLAVOR} \
			${FULLPKGNAME}:${BUILD_PKGPATH}

do-test:
	cd ${WRKSRC} && ${SETENV} RUBYOPT=-rubygems \
		RUBYLIB=${WRKSRC}/lib gmake test RUBY=${RUBY}

.include <bsd.port.mk>
