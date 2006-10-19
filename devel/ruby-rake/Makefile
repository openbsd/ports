# $OpenBSD: Makefile,v 1.3 2006/10/19 01:30:26 bernd Exp $

COMMENT=	"ruby make"

DISTNAME=	rake-0.7.1
PKGNAME=	ruby-${DISTNAME}p1
CATEGORIES=	devel

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org> 

# MIT License
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

HOMEPAGE=       http://rake.rubyforge.org/

MASTER_SITES=   http://rubyforge.org/frs/download.php/9498/

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

PKG_ARCH=	*

.include <bsd.port.mk>
