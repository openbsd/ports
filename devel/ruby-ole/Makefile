# $OpenBSD: Makefile,v 1.3 2011/09/16 09:24:57 espie Exp $

COMMENT =	provides read/write access to OLE2 structured storage files

DISTNAME =	ruby-ole-1.2.11.1
PKGNAME =	${DISTNAME:S/ruby-//}
REVISION=		0
CATEGORIES =	devel

# MIT
PERMIT_PACKAGE_CDROM =	 Yes
PERMIT_PACKAGE_FTP =	 Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	 Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

MODRUBY_REGRESS =	rake

RUN_DEPENDS =		${MODRUBY_ICONV_DEPENDS}

.include <bsd.port.mk>
