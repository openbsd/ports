# $OpenBSD: Makefile,v 1.1.1.1 2006/06/12 20:20:09 sturm Exp $

COMMENT=	"ruby MVC web application framework"

DISTNAME=	rails-1.1.2
PKGNAME=	ruby-${DISTNAME}
CATEGORIES=	www 

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org> 

# MIT License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://rubyforge.org/frs/download.php/9684/

MODULES=	lang/ruby

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/ruby-rake \
		::mail/ruby-actionmailer \
		::www/ruby-actionwebservice

CONFIGURE_STYLE=ruby gem

.include <bsd.port.mk>
