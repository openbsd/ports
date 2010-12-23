# $OpenBSD: Makefile,v 1.1.1.1 2010/12/23 13:54:33 claudio Exp $

COMMENT =	generate and parse Excel compatible spreadsheets

DISTNAME =	spreadsheet-0.6.5.0
CATEGORIES =	misc

# GPLv3
PERMIT_PACKAGE_CDROM =	 Yes
PERMIT_PACKAGE_FTP =	 Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	 Yes

MODULES	 =		lang/ruby

CONFIGURE_STYLE =	ruby gem

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/ruby-ole,${MODRUBY_FLAVOR}
REGRESS_DEPENDS =	devel/ruby-hoe,${MODRUBY_FLAVOR} \
			converters/ruby-json,${MODRUBY_FLAVOR}

MODRUBY_REGRESS =	rake

.include <bsd.port.mk>
