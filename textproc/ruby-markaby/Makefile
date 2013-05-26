# $OpenBSD: Makefile,v 1.16 2013/05/26 09:30:55 kirby Exp $

COMMENT=	HTML templating language for Ruby

DISTNAME=	markaby-0.5
REVISION =	9
CATEGORIES=	textproc devel

HOMEPAGE=	http://markaby.github.io/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	textproc/ruby-builder,${MODRUBY_FLAVOR}>=2.1.1

MODRUBY_TEST=	rake

.include <bsd.port.mk>
