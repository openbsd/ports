# $OpenBSD: Makefile,v 1.25 2016/04/15 03:21:51 tb Exp $

V =		2.8.9
PL =		8
COMMENT =	text web browser
DISTNAME =	lynx${V}dev.${PL}
PKGNAME =	lynx-${V}pl${PL}
REVISION =	3
EXTRACT_SUFX =	.tar.bz2
CATEGORIES =	www net

HOMEPAGE =	http://lynx.invisible-island.net/

MAINTAINER =	Frederic Cambus <fred@statdns.com>

# GPLv2 only
PERMIT_PACKAGE_CDROM =	Yes

# uses pledge()
WANTLIB += c crypto ncurses ssl z

MASTER_SITES =	http://lynx.invisible-island.net/current/ \
		http://invisible-mirror.net/archives/lynx/tarballs/ \
		http://invisible-mirror.net/archives/lynx/patches/

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
			--with-zlib

# This disables most calls to getpw*(3) so we can avoid pledge "getpw".
CONFIGURE_ENV =	CFLAGS="-DNOUSERS"

MAKE_FILE =	makefile

FAKE_FLAGS =	SYSCONFDIR="${DESTDIR}${PREFIX}/share/examples/lynx"
INSTALL_TARGET =	install install-help install-doc

NO_TEST =	Yes

.include <bsd.port.mk>
