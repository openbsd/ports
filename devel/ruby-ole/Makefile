# $OpenBSD: Makefile,v 1.1.1.1 2010/12/23 13:26:41 claudio Exp $

COMMENT =	Provides read/write access to OLE2 structured storage files

DISTNAME =	ruby-ole-1.2.11.1
PKGNAME =	${DISTNAME:S/ruby-//}
CATEGORIES =	devel

# MIT
PERMIT_PACKAGE_CDROM =	 Yes
PERMIT_PACKAGE_FTP =	 Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	 Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

MODRUBY_REGRESS =	rake

.include <bsd.port.mk>
