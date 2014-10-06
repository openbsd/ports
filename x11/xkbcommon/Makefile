# $OpenBSD: Makefile,v 1.2 2014/10/06 12:29:34 jasper Exp $

COMMENT=		library to handle keyboard descriptions

DISTNAME=		libxkbcommon-0.4.3
REVISION=		0
SHARED_LIBS +=	xkbcommon            0.0      # unknown
SHARED_LIBS +=	xkbcommon-x11        0.0      # unknown
CATEGORIES=		x11 inputmethods

HOMEPAGE=		http://xkbcommon.org/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# All licenses are derivative of the MIT/X11 license, mostly identical other
# than no-endorsement clauses (e.g. paragraph 4 of The Open Group's license).
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}/download/
EXTRACT_SUFX=		.tar.xz

WANTLIB += Xau Xdmcp pthread-stubs xcb xcb-xkb

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--without-doxygen

# XXX: Too many Linuxisms
NO_TEST=		Yes

# our pre-historic bison has been mummified and put into a museum.
# so generate parser.c with a fresh young bison that still roams the plains.
post-extract:
	cp ${FILESDIR}/parser.c ${WRKSRC}/src/xkbcomp/

.include <bsd.port.mk>
