# $OpenBSD: Makefile,v 1.13 2010/11/08 23:28:54 jeremy Exp $

COMMENT=	simple rake/rubygems helper for project Rakefiles

DISTNAME=	hoe-2.3.3
REVISION =      2
CATEGORIES=	devel

# mit
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/ruby

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:${MODRUBY_PKG_PREFIX}-rubyforge->=1.0.4:devel/ruby-rubyforge,${FLAVOR} \
		${MODRUBY_RAKE_DEPENDS}

CONFIGURE_STYLE=ruby gem

.include <bsd.port.mk>
