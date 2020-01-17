# $OpenBSD: Makefile,v 1.4 2020/01/17 08:35:50 landry Exp $

COMMENT =		tty-based carddav search tool

V =			1.6
DISTNAME =		mcds-${V}
CATEGORIES =		productivity

MAINTAINER =		Timothy Brown <tbrown@freeshell.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB =		assuan c curl gpg-error gpgme iconv intl xml2

MASTER_SITES =		https://github.com/t-brown/mcds/releases/download/v${V}/

LIB_DEPENDS =		devel/gettext,-runtime \
			net/curl \
			textproc/libxml \
			security/gpgme

CONFIGURE_STYLE =	gnu

NO_TEST =		Yes

.include <bsd.port.mk>
