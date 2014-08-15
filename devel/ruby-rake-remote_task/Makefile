# $OpenBSD: Makefile,v 1.1.1.1 2014/08/15 07:21:53 jasper Exp $

COMMENT=		extending Rake with remote task goodness

DISTNAME=		rake-remote_task-2.2.2
CATEGORIES=		devel

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		${MODRUBY_RAKE_DEPENDS} \
			devel/ruby-hoe,${MODRUBY_FLAVOR} \
			devel/ruby-open4,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
