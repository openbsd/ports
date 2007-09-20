# $OpenBSD: Makefile,v 1.3 2007/09/20 12:48:05 msf Exp $

SHARED_ONLY=		Yes

COMMENT=		Ruby interface to gettext

VERSION=		1.10.0
DISTNAME=		gettext-${VERSION}
PKGNAME=		ruby-gettext-${VERSION}
CATEGORIES=		devel

HOMEPAGE=		http://www.yotabanana.com/hiki/ruby-gettext.html

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m

MASTER_SITES=		${MASTER_SITE_RUBYFORGE:=gettext/}

MODULES=		lang/ruby

BUILD_DEPENDS=		:ruby-iconv->=1.8.4:lang/ruby,-iconv

CONFIGURE_STYLE=	ruby gem

NO_REGRESS=		Yes

.include <bsd.port.mk>
