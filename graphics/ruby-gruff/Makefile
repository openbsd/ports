# $OpenBSD: Makefile,v 1.11 2011/12/02 19:36:42 jeremy Exp $

COMMENT=		library for making beautiful graphs

DISTNAME=		gruff-0.3.6
CATEGORIES=		graphics

HOMEPAGE=		http://nubyonrails.com/pages/gruff/

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		graphics/ruby-rmagick,${MODRUBY_FLAVOR} \
			devel/ruby-hoe,${MODRUBY_FLAVOR}

# 1 regress failure on ruby 1.8 and 1.9
MODRUBY_REGRESS=	rake
MODRUBY_REGRESS_ENV=	LD_PRELOAD=/usr/lib/libpthread.so

pre-regress:
	@mkdir -p ${WRKSRC}/test/output

.include <bsd.port.mk>
