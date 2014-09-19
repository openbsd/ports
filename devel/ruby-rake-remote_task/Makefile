# $OpenBSD: Makefile,v 1.2 2014/09/19 20:12:26 jeremy Exp $

COMMENT=		extending Rake with remote task goodness

DISTNAME=		rake-remote_task-2.2.2
REVISION=		0
CATEGORIES=		devel

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		${MODRUBY_RAKE_DEPENDS} \
			devel/ruby-open4,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
