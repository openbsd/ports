# $OpenBSD: Makefile,v 1.4 2013/03/11 11:23:58 espie Exp $

COMMENT =	generate and parse Excel compatible spreadsheets

DISTNAME =	spreadsheet-0.6.5.0
REVISION=		1
CATEGORIES =	misc

# GPLv3
PERMIT_PACKAGE_CDROM =	 Yes

MODULES	 =		lang/ruby

CONFIGURE_STYLE =	ruby gem

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/ruby-ole,${MODRUBY_FLAVOR}
TEST_DEPENDS =	devel/ruby-hoe,${MODRUBY_FLAVOR} \
			converters/ruby-json,${MODRUBY_FLAVOR}

MODRUBY_TEST =	rake

.include <bsd.port.mk>
