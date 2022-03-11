COMMENT =		tty-based CardDav search tool

V =			1.6
DISTNAME =		mcds-${V}
CATEGORIES =		productivity
REVISION =		1

MAINTAINER =		Timothy Brown <tbrown@freeshell.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB =		assuan c curl gpg-error gpgme iconv intl xml2

MASTER_SITES =		https://github.com/t-brown/mcds/releases/download/v${V}/

BUILD_DEPENDS =		security/gnupg>=2.2.23p1

LIB_DEPENDS =		devel/gettext,-runtime \
			net/curl \
			textproc/libxml \
			security/gpgme

RUN_DEPENDS =		security/gnupg>=2.2.23p1

CONFIGURE_STYLE =	gnu

NO_TEST =		Yes

.include <bsd.port.mk>
