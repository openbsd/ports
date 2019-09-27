# $OpenBSD: Makefile,v 1.58 2019/09/27 20:33:22 jasper Exp $

ONLY_FOR_ARCHS=		${APM_ARCHS}

COMMENT=		generate a statusbar for use with i3/xmobar/dzen2

DISTNAME=		i3status-2.13
REVISION=		1
CATEGORIES=		x11 sysutils

HOMEPAGE=		https://i3wm.org/i3status/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MASTER_SITES=		${HOMEPAGE}
EXTRACT_SUFX=		.tar.bz2

WANTLIB += c confuse m pthread yajl iconv intl

USE_GMAKE=		Yes

BUILD_DEPENDS=		textproc/asciidoc>=8.6.8 \
			textproc/xmlto

LIB_DEPENDS=		devel/libconfuse \
			devel/libyajl

CONFIGURE_STYLE =	gnu
SEPARATE_BUILD =	Yes

FAKE_FLAGS +=		sysconfdir=${PREFIX}/share/examples/i3status/

.include <bsd.port.mk>
