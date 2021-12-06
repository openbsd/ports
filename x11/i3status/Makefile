# $OpenBSD: Makefile,v 1.63 2021/12/06 09:51:28 robert Exp $

ONLY_FOR_ARCHS=		${APM_ARCHS}

COMMENT=		generate a statusbar for use with i3/xmobar/dzen2

DISTNAME=		i3status-2.14
CATEGORIES=		x11 sysutils

HOMEPAGE=		https://i3wm.org/i3status/

MAINTAINER=		Robert Nagy <robert@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MASTER_SITES=		${HOMEPAGE}
EXTRACT_SUFX=		.tar.xz

WANTLIB += c confuse yajl sndio

MODULES=		devel/meson

BUILD_DEPENDS=		textproc/asciidoc>=8.6.8 \
			textproc/xmlto

LIB_DEPENDS=		devel/libconfuse \
			devel/libyajl

CONFIGURE_ARGS+=	-Dsndio=true \
			-Dpulseaudio=false

#FAKE_FLAGS +=		sysconfdir=${PREFIX}/share/examples/i3status/

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/i3status
	@mv ${WRKINST}/etc/i3status.conf ${PREFIX}/share/examples/i3status

.include <bsd.port.mk>
