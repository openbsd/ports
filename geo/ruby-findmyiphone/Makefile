# $OpenBSD: Makefile,v 1.1.1.1 2009/08/25 17:15:19 avsm Exp $

SHARED_ONLY=		Yes

COMMENT=		Ruby library to physically locate iPhones

VERSION=		0.2.0
DISTNAME=		mattb-findmyiphone-${VERSION}
PKGNAME=		ruby-findmyiphone-${VERSION}
CATEGORIES=		geo

HOMEPAGE=		http://github.com/mattb/findmyiphone

# Ruby license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GITHUB}

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

WANTLIB=		c m

LIB_DEPENDS=		${MODRUBY_LIB_DEPENDS}
BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::www/ruby-mechanize \
			::converters/ruby-json \
			::lang/ruby,-iconv

MODRUBY_REGRESS=	rake
PKG_ARCH=		*

.include <bsd.port.mk>
