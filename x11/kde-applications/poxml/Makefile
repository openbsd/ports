COMMENT =	convert PO files to XML
DISTNAME =	poxml-${VERSION}
CATEGORIES =	x11 devel

WANTLIB += ${COMPILER_LIBCXX} Qt6Core Qt6Xml c gettextpo m

# redundant but required to work around msgfmt poisoning in bsd.port.mk
BUILD_DEPENDS =	devel/gettext,-tools \
		devel/kf6/kdoctools

LIB_DEPENDS =	devel/gettext,-tools

.include <bsd.port.mk>
