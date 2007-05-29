# $OpenBSD: Makefile,v 1.1.1.1 2007/05/29 04:23:00 jcs Exp $

COMMENT=	"script which automates a limited set of rubyforge operations"

DISTNAME=	rubyforge-0.4.2
PKGNAME=	ruby-${DISTNAME}
CATEGORIES=	devel net

# ?
PERMIT_PACKAGE_CDROM=	no
PERMIT_PACKAGE_FTP=	no
PERMIT_DISTFILES_CDROM=	no
PERMIT_DISTFILES_FTP=	no

# codeforpeople
MASTER_SITES=	http://rubyforge.org/frs/download.php/20911/

MODULES=	lang/ruby

BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE=ruby gem

PKG_ARCH=	*

.include <bsd.port.mk>
