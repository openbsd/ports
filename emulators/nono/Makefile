# $OpenBSD: Makefile,v 1.3 2020/07/22 14:53:59 gonzalo Exp $

COMMENT=		LUNA-I emulator

DISTNAME=		nono-0.1.0
REVISION=		0
CATEGORIES=		emulators

MAINTAINER=		Gonzalo L. R. <gonzalo@openbsd.org>

HOMEPAGE=		http://www.pastel-flower.jp/~isaki/nono/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} c curses edit m wx_baseu-3.0 wx_baseu_net-3.0
WANTLIB += wx_baseu_xml-3.0 wx_gtk3u_adv-3.0 wx_gtk3u_core-3.0
WANTLIB += wx_gtk3u_html-3.0 wx_gtk3u_qa-3.0 wx_gtk3u_xrc-3.0
WANTLIB += z

MASTER_SITES=		http://www.pastel-flower.jp/~isaki/nono/archive/

LIB_DEPENDS=		devel/gettext,-tools \
			x11/wxWidgets

NO_TEST=		Yes
CONFIGURE_STYLE=	gnu

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/cli/nono-cli ${PREFIX}/bin/
	${INSTALL_PROGRAM} ${WRKSRC}/wx/nono ${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/nono
	${INSTALL_DATA} ${WRKSRC}/doc/index.html ${PREFIX}/share/doc/nono/manual.html

.include <bsd.port.mk>
