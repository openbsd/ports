COMMENT =	daemon to control digital model railroad systems

DISTNAME =	srcpd-2.1.7
CATEGORIES =	misc net

HOMEPAGE =	https://srcpd.sourceforge.net/
SITES =		${SITE_SOURCEFORGE:=srcpd/}

MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# GPLv2
PERMIT_PACKAGE =		Yes

WANTLIB += 		c iconv m pthread z lzma xml2
LIB_DEPENDS +=		converters/libiconv \
			textproc/libxml

AUTOCONF_VERSION =	2.71
CONFIGURE_STYLE =	autoconf

FAKE_FLAGS =		sysconfdir=${PREFIX}/share/examples/srcpd

.include <bsd.port.mk>
