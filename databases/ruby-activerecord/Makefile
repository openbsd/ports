# $OpenBSD: Makefile,v 1.4 2006/10/19 16:35:04 bernd Exp $

COMMENT=	"object relation model implementation for ruby"

DISTNAME=	activerecord-1.14.4
PKGNAME=	ruby-${DISTNAME}p1
CATEGORIES=	databases

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org> 

# MIT License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://rubyforge.org/frs/download.php/12245/

MODULES=	lang/ruby

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS= 	:ruby-activesupport-1.3.1:devel/ruby-activesupport

CONFIGURE_STYLE=ruby gem

PKG_ARCH=	*

.include <bsd.port.mk>
