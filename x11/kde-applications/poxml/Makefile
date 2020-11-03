# $OpenBSD: Makefile,v 1.3 2020/11/03 16:12:41 rsadowski Exp $

COMMENT =	convert PO files to XML
DISTNAME =	poxml-${VERSION}
CATEGORIES =	x11 devel

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Xml c gettextpo m

# redundant but required to work around msgfmt poisoning in bsd.port.mk
BUILD_DEPENDS =	devel/gettext,-tools \
		devel/kf5/kdoctools

LIB_DEPENDS =	devel/gettext,-tools

.include <bsd.port.mk>
