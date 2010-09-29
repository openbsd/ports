# $OpenBSD: Makefile,v 1.3 2010/09/29 15:29:21 jeremy Exp $

SHARED_ONLY=		Yes

COMMENT=		Ruby library to physically locate iPhones

VERSION=		0.2.0
DISTNAME=		findmyiphone-${VERSION}
PKGNAME=		ruby-findmyiphone-${VERSION}
REVISION=		1
CATEGORIES=		geo

HOMEPAGE=		http://github.com/mattb/findmyiphone

# Ruby license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

WANTLIB=		c m

LIB_DEPENDS=		${MODRUBY_LIB_DEPENDS}
BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::www/ruby-mechanize \
			::converters/ruby-json \
			${MODRUBY_ICONV_DEPENDS}

MODRUBY_REGRESS=	rake
PKG_ARCH=		*

.include <bsd.port.mk>
