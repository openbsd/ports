# $OpenBSD: Makefile,v 1.13 2021/11/22 13:55:54 espie Exp $

COMMENT-term=	cli client for Intel AMT serial-over-lan
COMMENT-main=	client and tools for Intel AMT serial-over-lan

V=		1.6
REVISION=	0
DISTNAME=	amtterm-$V
PKGNAME-term=	amtterm-cli-$V
MULTI_PACKAGES=	-main -term

CATEGORIES=	comms sysutils net

HOMEPAGE=	https://www.kraxel.org/blog/linux/amtterm/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB-term += c
WANTLIB += atk-1.0 c cairo cairo-gobject crypto gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gtk-3 harfbuzz intl pango-1.0
WANTLIB += pangocairo-1.0 ssl vte-2.91

# https://git.kraxel.org/cgit/amtterm/
MASTER_SITES=	https://www.kraxel.org/releases/amtterm/

LIB_DEPENDS-term=
LIB_DEPENDS-main= devel/gettext,-runtime \
		devel/vte3
RUN_DEPENDS-main= comms/amtterm,-term \
		devel/desktop-file-utils \
		www/p5-SOAP-Lite

MAKE_FLAGS=	verbose=yes USE_OPENSSL=1
FAKE_FLAGS=	mandir=${WRKINST}${PREFIX}/man

USE_GMAKE=	Yes

NO_TEST=	Yes

MAKE_FILE=	GNUmakefile

pre-configure:
	cp ${FILESDIR}/Make.config ${WRKSRC}/

.include <bsd.port.mk>
