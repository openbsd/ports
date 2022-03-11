COMMENT=		extending Rake with remote task goodness

DISTNAME=		rake-remote_task-2.4.2
CATEGORIES=		devel
REVISION=		0

# MIT
PERMIT_PACKAGE=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/ruby-open4,${MODRUBY_FLAVOR}
TEST_DEPENDS=		devel/ruby-hoe,${MODRUBY_FLAVOR}

MODRUBY_TEST=		rake

.include <bsd.port.mk>
