# $OpenBSD: Makefile,v 1.1.1.1 2009/11/22 07:09:48 msf Exp $

COMMENT = 	streaming text orientated messaging protocol ruby client

DISTNAME = 	stomp-1.1
PKGNAME = 	ruby-${DISTNAME}
CATEGORIES = 	net

HOMEPAGE =	http://stomp.codehaus.org/Ruby

MAINTAINER =	Mathieu Sauve-Frankel <msf@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MASTER_SITES =	${MASTER_SITE_RUBYFORGE:=stomp/}

MODULES = 	lang/ruby

CONFIGURE_STYLE = ruby gem

PKG_ARCH = *

.include <bsd.port.mk>
