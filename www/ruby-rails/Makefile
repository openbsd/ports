# $OpenBSD: Makefile,v 1.3 2006/08/12 07:37:15 sturm Exp $

COMMENT=	"ruby MVC web application framework"

DISTNAME=	rails-1.1.6
PKGNAME=	ruby-${DISTNAME}
CATEGORIES=	www 

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org> 

# MIT License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://rubyforge.org/frs/download.php/12322/

MODULES=	lang/ruby

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/ruby-gems \
		::devel/ruby-rake \
		:ruby-actionmailer-1.2.5:mail/ruby-actionmailer \
		:ruby-actionwebservice-1.1.6:www/ruby-actionwebservice

CONFIGURE_STYLE=ruby gem

.include <bsd.port.mk>
