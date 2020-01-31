# $OpenBSD: Makefile,v 1.6 2020/01/31 18:58:43 cwen Exp $

COMMENT =		tty-based CardDav search tool

V =			1.6
DISTNAME =		mcds-${V}
CATEGORIES =		productivity
REVISION =		0

MAINTAINER =		Timothy Brown <tbrown@freeshell.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB =		assuan c curl gpg-error gpgme iconv intl xml2

MASTER_SITES =		https://github.com/t-brown/mcds/releases/download/v${V}/

BUILD_DEPENDS =		security/gnupg2

LIB_DEPENDS =		devel/gettext,-runtime \
			net/curl \
			textproc/libxml \
			security/gpgme

RUN_DEPENDS =		security/gnupg2

CONFIGURE_STYLE =	gnu

NO_TEST =		Yes

.include <bsd.port.mk>
