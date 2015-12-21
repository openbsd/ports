# $OpenBSD: Makefile,v 1.4 2015/12/21 18:34:57 jasper Exp $

COMMENT=		extending Rake with remote task goodness

DISTNAME=		rake-remote_task-2.3.0
CATEGORIES=		devel

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/ruby-open4,${MODRUBY_FLAVOR}

MODRUBY_TEST=		rake

.include <bsd.port.mk>
