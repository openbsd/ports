# $OpenBSD: Makefile,v 1.22 2016/01/14 10:45:07 dcoppa Exp $

V =		2.8.9
PL =		8
COMMENT =	text web browser
DISTNAME =	lynx${V}dev.${PL}
PKGNAME =	lynx-${V}pl${PL}
REVISION =	1
EXTRACT_SUFX =	.tar.bz2
CATEGORIES =	www net

HOMEPAGE =	http://lynx.invisible-island.net/

MAINTAINER =	Frederic Cambus <fred@statdns.com>

# GPLv2 only
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c crypto ncurses ssl z

MASTER_SITES =	http://invisible-mirror.net/archives/lynx/tarballs/

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--datarootdir="${PREFIX}/share/doc/lynx" \
			--disable-idna \
			--disable-nls \
			--enable-default-colors \
			--enable-ipv6 \
			--enable-widec \
			--with-ssl=/usr \
			--with-zlib

MAKE_FILE =	makefile

FAKE_FLAGS =	SYSCONFDIR="${DESTDIR}${PREFIX}/share/examples/lynx"
INSTALL_TARGET =	install install-help install-doc

NO_TEST =	Yes

.include <bsd.port.mk>
