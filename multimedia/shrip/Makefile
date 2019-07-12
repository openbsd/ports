# $OpenBSD: Makefile,v 1.9 2019/07/12 20:47:58 sthen Exp $

COMMENT =		shell client for ogmrip

DISTNAME =		shrip-0.6.0
REVISION =		4

CATEGORIES =		multimedia

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB =  c dvdcss dvdread enca ffi gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 iconv intl lzma m ogmdvd ogmjob ogmrip
WANTLIB += ogmrip-lavc ogmrip-mplayer pcre pthread xml2 z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=ogmrip/}

MODULES =		textproc/intltool

LIB_DEPENDS =		multimedia/ogmrip,-main

CONFIGURE_STYLE =	gnu

NO_TEST =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/shrip
	${INSTALL_DATA} ${WRKSRC}/shrip.conf \
		${PREFIX}/share/examples/shrip

.include <bsd.port.mk>
