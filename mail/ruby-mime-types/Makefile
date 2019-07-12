# $OpenBSD: Makefile,v 1.15 2019/07/12 20:47:37 sthen Exp $

COMMENT=		MIME type library for Ruby

DISTNAME=		mime-types-3.2.2
CATEGORIES=		mail

HOMEPAGE=		https://github.com/mime-types/ruby-mime-types/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		mail/ruby-mime-types-data,${MODRUBY_FLAVOR}>=3.2015,<4

.include <bsd.port.mk>
