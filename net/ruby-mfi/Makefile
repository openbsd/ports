# $OpenBSD: Makefile,v 1.4 2019/11/03 14:07:44 jasper Exp $

COMMENT=		integration with Ubiquiti mFi sensors and devices

DISTNAME=		mfi-0.9.1
REVISION=		1
CATEGORIES=		net

# MIT
PERMIT_PACKAGE=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		net/ruby-net-ssh,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
