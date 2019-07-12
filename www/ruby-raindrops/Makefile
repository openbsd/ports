# $OpenBSD: Makefile,v 1.19 2019/07/12 20:51:04 sthen Exp $

COMMENT =	real-time stats toolkit for Rack HTTP servers

DISTNAME =	raindrops-0.19.0
REVISION =	0
CATEGORIES =	www

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# LGPLv2.1/LGPLv3
PERMIT_PACKAGE =	Yes

MODULES =	lang/ruby

CONFIGURE_STYLE =	ruby gem ext

# XXX fallback if arch doesn't provide atomic builtins
BUILD_DEPENDS +=	libatomic_ops-*:devel/boehm-gc,-atomic

TEST_DEPENDS =		devel/gmake \
			www/ruby-rack,${MODRUBY_FLAVOR} \
			www/ruby-unicorn,${MODRUBY_FLAVOR} \
			${FULLPKGNAME}:${BUILD_PKGPATH}

do-test:
	cd ${WRKSRC} && ${SETENV} RUBYOPT=-rubygems \
		RUBYLIB=${WRKSRC}/lib gmake test RUBY=${RUBY}

.include <bsd.port.mk>
