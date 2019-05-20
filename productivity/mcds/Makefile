# $OpenBSD: Makefile,v 1.2 2019/05/20 22:15:22 naddy Exp $

COMMENT =		tty-based carddav search tool

V =			0.9
DISTNAME =		mcds-${V}
CATEGORIES =		productivity
REVISION =		0

MAINTAINER =		Timothy Brown <tbrown@freeshell.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c curl iconv intl xml2

MASTER_SITES =		https://github.com/t-brown/mcds/releases/download/v${V}/

LIB_DEPENDS =		devel/gettext,-runtime \
			net/curl \
			textproc/libxml

CONFIGURE_STYLE =	gnu

NO_TEST =		Yes

.include <bsd.port.mk>
