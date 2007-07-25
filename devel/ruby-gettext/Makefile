# $OpenBSD: Makefile,v 1.1.1.1 2007/07/25 08:45:48 dlg Exp $

SHARED_ONLY=		Yes

COMMENT=		"Ruby interface to gettext"

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

MASTER_SITES=		http://rubyforge.org/frs/download.php/22477/

MODULES=		lang/ruby

BUILD_DEPENDS=		:ruby-iconv->=1.8.4:lang/ruby,-iconv

CONFIGURE_STYLE=	ruby gem

NO_REGRESS=		Yes

.include <bsd.port.mk>
