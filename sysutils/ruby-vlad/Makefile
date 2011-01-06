# $OpenBSD: Makefile,v 1.10 2011/01/06 04:24:24 jeremy Exp $

COMMENT=		pragmatic application deployment automation

DISTNAME=		vlad-2.0.0
REVISION =		3
CATEGORIES=		sysutils

HOMEPAGE=		http://rubyhitsquad.com/Vlad_the_Deployer.html

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		${MODRUBY_RAKE_DEPENDS} \
			devel/ruby-open4,${MODRUBY_FLAVOR} \
			devel/ruby-hoe,${MODRUBY_FLAVOR}

MODRUBY_REGRESS=	rake
REGRESS_DEPENDS=	devel/ruby-minitest,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
