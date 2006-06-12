# $OpenBSD: Makefile,v 1.1.1.1 2006/06/12 20:01:18 sturm Exp $

COMMENT=	"easy email delivery and testing for ruby"

DISTNAME=	actionmailer-1.2.1
PKGNAME=	ruby-${DISTNAME}
CATEGORIES=	mail

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org> 

# MIT License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://rubyforge.org/frs/download.php/9571/

MODULES=	lang/ruby

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS= 	::devel/ruby-actionpack

CONFIGURE_STYLE=ruby gem

.include <bsd.port.mk>
