# $OpenBSD: Makefile,v 1.1.1.1 2006/06/12 20:10:29 sturm Exp $

COMMENT=	"action controller and action view of rails MVC framework"

DISTNAME=	actionwebservice-1.1.2
PKGNAME=	ruby-${DISTNAME}
CATEGORIES=	www

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org> 

# MIT License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://rubyforge.org/frs/download.php/9681/

MODULES=	lang/ruby

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::databases/ruby-activerecord \
		::devel/ruby-actionpack

CONFIGURE_STYLE=ruby gem

.include <bsd.port.mk>
