# $OpenBSD: Makefile,v 1.19 2011/11/17 17:29:28 jeremy Exp $

COMMENT=	simple rake/rubygems helper for project Rakefiles

DISTNAME=	hoe-2.12.3
CATEGORIES=	devel

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/ruby

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	${MODRUBY_RAKE_DEPENDS}

CONFIGURE_STYLE=ruby gem

# Regress doesn't work in ruby 1.8, because it ships with
# an old version of rdoc.
REGRESS_DEPENDS =	math/graphviz
MODRUBY_REGRESS =	rake

.include <bsd.port.mk>
