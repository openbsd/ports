# $OpenBSD: Makefile,v 1.1.1.1 2006/06/12 19:45:48 sturm Exp $

COMMENT=	"object relation model implementation for ruby"

DISTNAME=	activerecord-1.14.2
PKGNAME=	ruby-${DISTNAME}
CATEGORIES=	databases

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org> 

# MIT License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://rubyforge.org/frs/download.php/9680/

MODULES=	lang/ruby

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS= 	::devel/ruby-activesupport

CONFIGURE_STYLE=ruby gem

.include <bsd.port.mk>
