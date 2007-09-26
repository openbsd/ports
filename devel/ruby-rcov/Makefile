# $OpenBSD: Makefile,v 1.1.1.1 2007/09/26 17:17:22 bernd Exp $

SHARED_ONLY=	Yes

COMMENT=	code coverage tool for Ruby

DISTNAME=	rcov-0.8.0.2
PKGNAME=	ruby-${DISTNAME}
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

LIB_DEPENDS=	ruby::lang/ruby

CONFIGURE_STYLE=ruby gem

.include <bsd.port.mk>
