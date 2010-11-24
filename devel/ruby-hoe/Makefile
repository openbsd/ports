# $OpenBSD: Makefile,v 1.15 2010/11/24 21:35:14 jeremy Exp $

COMMENT=	simple rake/rubygems helper for project Rakefiles

DISTNAME=	hoe-2.3.3
REVISION =	3
CATEGORIES=	devel

# mit
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/ruby

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/ruby-rubyforge,${MODRUBY_FLAVOR}>=1.0.4 \
		${MODRUBY_RAKE_DEPENDS}

CONFIGURE_STYLE=ruby gem

.include <bsd.port.mk>
