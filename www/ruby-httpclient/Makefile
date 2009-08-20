# $OpenBSD: Makefile,v 1.3 2009/08/20 23:12:26 bernd Exp $

COMMENT =	library to access web resources via HTTP

DISTNAME =	httpclient-2.1.5.2
PKGNAME =	ruby-${DISTNAME}
CATEGORIES =	www

HOMEPAGE =	http://dev.ctor.org/http-access2/

# same as Ruby
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MASTER_SITES =		http://dev.ctor.org/download/gems/

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

PKG_ARCH =		*

.include <bsd.port.mk>
