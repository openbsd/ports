# $OpenBSD: Makefile,v 1.7 2010/09/28 20:12:17 jeremy Exp $

SHARED_ONLY=	Yes

COMMENT=	code coverage tool for Ruby

DISTNAME=	rcov-0.8.1.2.0
PKGNAME=	ruby-${DISTNAME}
REVISION=	2
CATEGORIES=	devel

MAINTAINER=	Jeremy Evans <jeremy@openbsd.org>

# MIT License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/ruby

WANTLIB=	c m

LIB_DEPENDS=	${MODRUBY_LIB_DEPENDS}

CONFIGURE_STYLE=ruby gem

.include <bsd.port.mk>
