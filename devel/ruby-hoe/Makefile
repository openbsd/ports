# $OpenBSD: Makefile,v 1.7 2008/10/28 17:43:22 pirofti Exp $

COMMENT=	simple rake/rubygems helper for project Rakefiles

DISTNAME=	hoe-1.8.2
PKGNAME=	ruby-${DISTNAME}
CATEGORIES=	devel

# mit
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_RUBYFORGE:=seattlerb/}

MODULES=	lang/ruby

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/ruby-rubyforge \
		:ruby-rake->=0.8.3:devel/ruby-rake

CONFIGURE_STYLE=ruby gem

PKG_ARCH=	*

do-regress:
	@cd ${WRKBUILD} && ${LOCALBASE}/bin/rake test

.include <bsd.port.mk>
