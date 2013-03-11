# $OpenBSD: Makefile,v 1.14 2013/03/11 11:41:32 espie Exp $

COMMENT=		pragmatic application deployment automation

DISTNAME=		vlad-2.0.0
REVISION =		6
CATEGORIES=		sysutils

HOMEPAGE=		http://rubyhitsquad.com/Vlad_the_Deployer.html

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		${MODRUBY_RAKE_DEPENDS} \
			devel/ruby-open4,${MODRUBY_FLAVOR} \
			devel/ruby-hoe,${MODRUBY_FLAVOR}

MODRUBY_TEST=	rake
TEST_DEPENDS=	devel/ruby-minitest,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
