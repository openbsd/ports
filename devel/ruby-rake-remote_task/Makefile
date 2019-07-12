# $OpenBSD: Makefile,v 1.6 2019/07/12 20:45:59 sthen Exp $

COMMENT=		extending Rake with remote task goodness

DISTNAME=		rake-remote_task-2.4.2
CATEGORIES=		devel

# MIT
PERMIT_PACKAGE=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/ruby-open4,${MODRUBY_FLAVOR}
TEST_DEPENDS=		devel/ruby-hoe,${MODRUBY_FLAVOR}

MODRUBY_TEST=		rake

.include <bsd.port.mk>
