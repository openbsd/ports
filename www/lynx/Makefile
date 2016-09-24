# $OpenBSD: Makefile,v 1.30 2016/09/24 15:50:36 fcambus Exp $

V =		2.8.9
PL =		9
COMMENT =	text web browser
DISTNAME =	lynx${V}dev.${PL}
PKGNAME =	lynx-${V}pl${PL}
REVISION =	2
EXTRACT_SUFX =	.tar.bz2
CATEGORIES =	www net

HOMEPAGE =	http://lynx.invisible-island.net/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# GPLv2 only
PERMIT_PACKAGE_CDROM =	Yes

# uses pledge()
WANTLIB +=	c crypto ncurses ssl z

MASTER_SITES =	http://invisible-mirror.net/archives/lynx/tarballs/ \
		ftp://invisible-island.net/lynx/tarballs/

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
			--without-bzlib

# This disables most calls to getpw*(3) so we can avoid pledge "getpw".
CONFIGURE_ENV +=	CFLAGS="-DNOUSERS"

# Prevent accepting bzip2 compressed HTML to avoid spawning processes.
CONFIGURE_ENV +=	ac_cv_path_BZIP2=none

MAKE_FILE =	makefile

FAKE_FLAGS =	SYSCONFDIR="${DESTDIR}${PREFIX}/share/examples/lynx"
INSTALL_TARGET =	install install-help install-doc

NO_TEST =	Yes

.include <bsd.port.mk>
