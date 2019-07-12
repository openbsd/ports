# $OpenBSD: Makefile,v 1.3 2019/07/12 20:47:54 sthen Exp $

COMMENT =	banner art generator with Unicode font and color support
DISTNAME =	toilet-0.3
CATEGORIES =	misc
REVISION =	0

HOMEPAGE =	http://caca.zoy.org/wiki/toilet

# WTFPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += c caca

MASTER_SITES =	http://caca.zoy.org/raw-attachment/wiki/toilet/

LIB_DEPENDS =	graphics/libcaca

CONFIGURE_STYLE =	gnu

# For man page generation and the tests.
USE_GMAKE =	Yes
MAKE_FLAGS =	LDFLAGS="-L${X11BASE}/lib"

post-patch:
	perl -pi -e "s,make,${MAKE_PROGRAM},g" ${WRKSRC}/test/check-*

.include <bsd.port.mk>
