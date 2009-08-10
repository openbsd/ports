# $OpenBSD: Makefile,v 1.4 2009/08/10 15:27:13 msf Exp $

SHARED_ONLY=	Yes

COMMENT=	code coverage tool for Ruby

DISTNAME=	rcov-0.8.1.2.0
PKGNAME=	ruby-${DISTNAME}p0
CATEGORIES=	devel

MAINTAINER=	Markus Friedl <markus@openbsd.org>

# MIT License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_RUBYFORGE:=rcov/}

MODULES=	lang/ruby

WANTLIB=	c m

LIB_DEPENDS=	${MODRUBY_LIB_DEPENDS}

CONFIGURE_STYLE=ruby gem

.include <bsd.port.mk>
