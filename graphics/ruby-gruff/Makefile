# $OpenBSD: Makefile,v 1.14 2013/10/26 23:55:36 jeremy Exp $

COMMENT=		library for making beautiful graphs

DISTNAME=		gruff-0.3.6
REVISION =		1
CATEGORIES=		graphics

HOMEPAGE=		http://nubyonrails.com/pages/gruff/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		graphics/ruby-rmagick,${MODRUBY_FLAVOR} \
			devel/ruby-hoe,${MODRUBY_FLAVOR}

# 1 regress failure on ruby 1.8 and 1.9
MODRUBY_TEST=	rake
MODRUBY_TEST_ENV=	LD_PRELOAD=/usr/lib/libpthread.so

pre-test:
	@mkdir -p ${WRKSRC}/test/output

.include <bsd.port.mk>
