# $OpenBSD: Makefile,v 1.1.1.1 2006/06/11 20:04:37 sturm Exp $

COMMENT=	"eases web-request routing, handling, and response"

DISTNAME=       actionpack-1.12.1
PKGNAME=	ruby-${DISTNAME}
CATEGORIES=     devel

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org> 

# MIT License
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=   http://rubyforge.org/frs/download.php/9568/

MODULES=	lang/ruby

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/ruby-activesupport

CONFIGURE_STYLE=ruby gem

.include <bsd.port.mk>
