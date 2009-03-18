# $OpenBSD: Makefile,v 1.3 2009/03/18 19:22:33 bernd Exp $

COMMENT=		pragmatic application deployment automation

DISTNAME=		vlad-1.3.2
PKGNAME=		ruby-${DISTNAME}
CATEGORIES=		sysutils

HOMEPAGE=		http://rubyhitsquad.com/Vlad_the_Deployer.html

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_RUBYFORGE:=hitsquad/}

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::devel/ruby-rake \
			::devel/ruby-open4 \
			::devel/ruby-hoe

PKG_ARCH=		*

do-regress:
	@cd ${WRKBUILD} && ${LOCALBASE}/bin/rake test

.include <bsd.port.mk>
