# $OpenBSD: Makefile,v 1.5 2013/03/11 10:50:30 espie Exp $

COMMENT =	provides read/write access to OLE2 structured storage files

DISTNAME =	ruby-ole-1.2.11.4
PKGNAME =	${DISTNAME:S/ruby-//}
CATEGORIES =	devel

# MIT
PERMIT_PACKAGE_CDROM =	 Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

MODRUBY_TEST =	rake

RUN_DEPENDS =		${MODRUBY_ICONV_DEPENDS}

.include <bsd.port.mk>
