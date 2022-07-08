COMMENT=		pragmatic application deployment automation

DISTNAME=		vlad-2.6.5
CATEGORIES=		sysutils
REVISION=		1

HOMEPAGE=		http://rubyhitsquad.com/Vlad_the_Deployer.html

# MIT
PERMIT_PACKAGE=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/ruby-rake-remote_task,${MODRUBY_FLAVOR}

MODRUBY_TEST=		rake
TEST_DEPENDS=		devel/ruby-hoe,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
