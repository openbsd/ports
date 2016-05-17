# $OpenBSD: Makefile,v 1.27 2016/05/17 00:08:44 sthen Exp $

V =		2.8.9
PL =		9
COMMENT =	text web browser
DISTNAME =	lynx${V}dev.${PL}
PKGNAME =	lynx-${V}pl${PL}
EXTRACT_SUFX =	.tar.bz2
CATEGORIES =	www net

HOMEPAGE =	http://lynx.invisible-island.net/

MAINTAINER =	Frederic Cambus <fred@statdns.com>

# GPLv2 only
PERMIT_PACKAGE_CDROM =	Yes

# uses pledge()
WANTLIB += bz2 c crypto ncurses ssl z

MASTER_SITES =	http://invisible-mirror.net/archives/lynx/tarballs/ \
		ftp://invisible-island.net/lynx/tarballs/

LIB_DEPENDS =	archivers/bzip2

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--datarootdir="${PREFIX}/share/doc/lynx" \
			--disable-idna \
			--disable-nls \
			--disable-bibp-urls \
			--disable-dired \
			--disable-finger \
			--enable-default-colors \
			--enable-ipv6 \
			--enable-widec \
			--with-ssl=/usr \
			--with-zlib \
			--with-bzlib

# This disables most calls to getpw*(3) so we can avoid pledge "getpw".
CONFIGURE_ENV =	CFLAGS="-DNOUSERS"

MAKE_FILE =	makefile

FAKE_FLAGS =	SYSCONFDIR="${DESTDIR}${PREFIX}/share/examples/lynx"
INSTALL_TARGET =	install install-help install-doc

NO_TEST =	Yes

.include <bsd.port.mk>
