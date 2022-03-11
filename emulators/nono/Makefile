# Big endian support is not complete as of 0.1.0
NOT_FOR_ARCHS=		${BE_ARCHS}
BROKEN-i386=		requires __m128i and similar types; may work if SSE is disabled

COMMENT=		OMRON LUNA-I and LUNA-88K emulator

DISTNAME=		nono-0.2.5
CATEGORIES=		emulators

MAINTAINER=		Gonzalo L. R. <gonzalo@openbsd.org>

HOMEPAGE=		http://www.pastel-flower.jp/~isaki/nono/

# see doc/nono-license.txt
PERMIT_DISTFILES =	Yes
PERMIT_PACKAGE =	binaries cannot be distributed

WANTLIB += ${COMPILER_LIBCXX} c curses edit m wx_baseu-3.0 wx_baseu_net-3.0
WANTLIB += wx_baseu_xml-3.0 wx_gtk3u_adv-3.0 wx_gtk3u_core-3.0
WANTLIB += wx_gtk3u_html-3.0 wx_gtk3u_qa-3.0 wx_gtk3u_xrc-3.0
WANTLIB += z

MASTER_SITES=		http://www.pastel-flower.jp/~isaki/nono/archive/

BUILD_DEPENDS=		devel/gettext,-tools
LIB_DEPENDS=		x11/wxWidgets

NO_TEST=		Yes
CONFIGURE_STYLE=	gnu

post-extract:
	sed -i 's/-Werror//g' ${WRKSRC}/Makefile.inc

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/nono
	${INSTALL_DATA} ${WRKSRC}/doc/index.html ${PREFIX}/share/doc/nono/manual.html

.include <bsd.port.mk>
