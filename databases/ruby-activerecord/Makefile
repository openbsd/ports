# $OpenBSD: Makefile,v 1.5 2007/05/03 11:25:17 msf Exp $

COMMENT=	"object relation model implementation for ruby"

DISTNAME=	activerecord-1.14.4
PKGNAME=	ruby-${DISTNAME}p1
CATEGORIES=	databases

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
