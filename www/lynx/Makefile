# $OpenBSD: Makefile,v 1.19 2015/08/25 13:18:28 sthen Exp $

V =		2.8.9
PL =		6
COMMENT =	console Internet browser
DISTNAME =	lynx${V}dev.${PL}
PKGNAME =	lynx-${V}pl${PL}
EXTRACT_SUFX =	.tar.bz2
CATEGORIES =	www net
REVISION =	0

HOMEPAGE =	http://lynx.isc.org/

# GPLv2 only
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c crypto ncurses ssl z

MASTER_SITES =	http://lynx.isc.org/current/

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--datarootdir="${PREFIX}/share/doc/lynx" \
			--disable-idna \
			--disable-nls \
			--enable-ipv6 \
			--enable-widec \
			--with-ssl=/usr \
			--with-zlib

MAKE_FILE =	makefile

FAKE_FLAGS =	SYSCONFDIR="${DESTDIR}${PREFIX}/share/examples/lynx"
INSTALL_TARGET =	install install-help install-doc

NO_TEST =	Yes
WRKDIST =	${WRKDIR}/lynx${V:C/\./-/g}

.include <bsd.port.mk>
