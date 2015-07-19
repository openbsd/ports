# $OpenBSD: Makefile,v 1.3 2015/07/19 02:10:31 jeremy Exp $

COMMENT=		extending Rake with remote task goodness

DISTNAME=		rake-remote_task-2.2.2
REVISION=		1
CATEGORIES=		devel

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/ruby-open4,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
