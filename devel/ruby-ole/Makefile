# $OpenBSD: Makefile,v 1.7 2014/10/11 19:54:46 jeremy Exp $

COMMENT =	provides read/write access to OLE2 structured storage files

DISTNAME =	ruby-ole-1.2.11.4
PKGNAME =	${DISTNAME:S/ruby-//}
REVISION =	1
CATEGORIES =	devel

# MIT
PERMIT_PACKAGE_CDROM =	 Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

MODRUBY_TEST =	rake

RUN_DEPENDS =		${MODRUBY_ICONV_DEPENDS}

.include <bsd.port.mk>
