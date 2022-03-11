COMMENT=		MIME type library for Ruby

DISTNAME=		mime-types-3.3.1
CATEGORIES=		mail

HOMEPAGE=		https://github.com/mime-types/ruby-mime-types/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		mail/ruby-mime-types-data,${MODRUBY_FLAVOR}>=3.2015,<4

.include <bsd.port.mk>
