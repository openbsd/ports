# $OpenBSD: Makefile,v 1.4 2006/10/19 17:00:59 bernd Exp $

COMMENT=	"easy email delivery and testing for ruby"

DISTNAME=	actionmailer-1.2.5
PKGNAME=	ruby-${DISTNAME}p1
CATEGORIES=	mail

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org> 

# MIT License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://rubyforge.org/frs/download.php/12316/

MODULES=	lang/ruby

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS= 	:ruby-actionpack-1.12.5:devel/ruby-actionpack

CONFIGURE_STYLE=ruby gem

.include <bsd.port.mk>
