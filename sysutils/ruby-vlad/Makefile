# $OpenBSD: Makefile,v 1.19 2015/12/21 18:35:03 jasper Exp $

COMMENT=		pragmatic application deployment automation

DISTNAME=		vlad-2.6.5
CATEGORIES=		sysutils

HOMEPAGE=		http://rubyhitsquad.com/Vlad_the_Deployer.html

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/ruby-rake-remote_task,${MODRUBY_FLAVOR}

MODRUBY_TEST=		rake
TEST_DEPENDS=		devel/ruby-hoe,${MODRUBY_FLAVOR} \
			devel/ruby-minitest,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
