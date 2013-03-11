# $OpenBSD: Makefile,v 1.15 2013/03/11 11:42:46 espie Exp $

COMMENT=	HTML templating language for Ruby

DISTNAME=	markaby-0.5
REVISION =	8
CATEGORIES=	textproc devel

HOMEPAGE=	http://code.whytheluckystiff.net/markaby/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	textproc/ruby-builder,${MODRUBY_FLAVOR}>=2.1.1

MODRUBY_TEST=	rake

.include <bsd.port.mk>
