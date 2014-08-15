# $OpenBSD: Makefile,v 1.16 2014/08/15 07:24:10 jasper Exp $

COMMENT=		pragmatic application deployment automation

DISTNAME=		vlad-2.6.3
CATEGORIES=		sysutils

HOMEPAGE=		http://rubyhitsquad.com/Vlad_the_Deployer.html

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		${MODRUBY_RAKE_DEPENDS} \
			devel/ruby-rake-remote_task,${MODRUBY_FLAVOR}

MODRUBY_TEST=		rake
TEST_DEPENDS=		devel/ruby-minitest,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
