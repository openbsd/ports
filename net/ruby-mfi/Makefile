# $OpenBSD: Makefile,v 1.1.1.1 2014/08/15 12:09:41 jasper Exp $

COMMENT=		integration with Ubiquiti mFi sensors and devices

DISTNAME=		mfi-0.9.1
CATEGORIES=		net

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		converters/ruby-json,${MODRUBY_FLAVOR}>=1.8.1 \
			net/ruby-net-ssh,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
