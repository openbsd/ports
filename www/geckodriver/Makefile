COMMENT =	W3C webdriver for Gecko-based browsers

GH_ACCOUNT =	mozilla
GH_PROJECT =	geckodriver
GH_TAGNAME =	v0.31.0
REVISION =	1

CATEGORIES =	www

# mozilla public license
PERMIT_PACKAGE =	Yes

MODULES =		devel/cargo

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

.include "modules.inc"

LIB_DEPENDS +=	archivers/bzip2
WANTLIB += c c++abi m pthread bz2

.include <bsd.port.mk>
