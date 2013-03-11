# $OpenBSD: Makefile,v 1.13 2013/03/11 11:10:55 espie Exp $

COMMENT=		library for making beautiful graphs

DISTNAME=		gruff-0.3.6
REVISION =		0
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
