# $OpenBSD: Makefile,v 1.4 2006/10/20 11:20:57 bernd Exp $

COMMENT=	"action controller and action view of rails MVC framework"

DISTNAME=	actionwebservice-1.1.6
PKGNAME=	ruby-${DISTNAME}p1
CATEGORIES=	www

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org> 

# MIT License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://rubyforge.org/frs/download.php/12319/

MODULES=	lang/ruby

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:ruby-activerecord-1.14.4:databases/ruby-activerecord \
		:ruby-actionpack-1.12.5:devel/ruby-actionpack

CONFIGURE_STYLE=ruby gem

PKG_ARCH=	*

.include <bsd.port.mk>
