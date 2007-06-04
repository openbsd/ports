# $OpenBSD: Makefile,v 1.3 2007/06/04 18:00:00 espie Exp $

COMMENT=	"simple rake/rubygems helper for project Rakefiles"

DISTNAME=	hoe-1.2.1
PKGNAME=	ruby-${DISTNAME}p0
CATEGORIES=	devel

# mit
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_RUBYFORGE:=seattlerb/}

MODULES=	lang/ruby

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:ruby-rubyforge-0.4.2:devel/ruby-rubyforge \
		:ruby-rake->=0.7.2:devel/ruby-rake

CONFIGURE_STYLE=ruby gem

PKG_ARCH=	*

.include <bsd.port.mk>
