# $OpenBSD: Makefile,v 1.14 2010/11/15 19:46:08 espie Exp $

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
RUN_DEPENDS=	STEM->=1.0.4:devel/ruby-rubyforge,${FLAVOR} \
		${MODRUBY_RAKE_DEPENDS}

CONFIGURE_STYLE=ruby gem

.include <bsd.port.mk>
