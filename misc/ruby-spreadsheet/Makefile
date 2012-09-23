# $OpenBSD: Makefile,v 1.3 2012/09/23 16:57:34 jeremy Exp $

COMMENT =	generate and parse Excel compatible spreadsheets

DISTNAME =	spreadsheet-0.6.5.0
REVISION=		1
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
