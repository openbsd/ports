# $OpenBSD: Makefile,v 1.5 2016/04/25 18:00:29 jasper Exp $

COMMENT=		library to handle keyboard descriptions

DISTNAME=		libxkbcommon-0.6.0
SHARED_LIBS +=	xkbcommon            1.1      # unknown
SHARED_LIBS +=	xkbcommon-x11        1.0      # unknown
CATEGORIES=		x11 inputmethods

HOMEPAGE=		http://xkbcommon.org/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# All licenses are derivative of the MIT/X11 license, mostly identical other
# than no-endorsement clauses (e.g. paragraph 4 of The Open Group's license).
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}/download/
EXTRACT_SUFX=		.tar.xz

WANTLIB += Xau Xdmcp pthread-stubs xcb xcb-xkb

BUILD_DEPENDS =		devel/bison

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--without-doxygen
CONFIGURE_ENV +=	YACC=${LOCALBASE}/bin/bison

TEST_DEPENDS =		shells/bash
TEST_IS_INTERACTIVE=	x11

# XXX: This test still fails
pre-test:
	sed -i 's,bin/bash,${LOCALBASE}/bin/bash,' ${WRKSRC}/test/symbols-leak-test.bash

.include <bsd.port.mk>
