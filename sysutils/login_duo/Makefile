# $OpenBSD: Makefile,v 1.13 2016/08/09 02:11:26 jturner Exp $

COMMENT =		two-factor authentication for unix systems

V =			1.9.19
PKGNAME =		login_duo-${V}
DISTNAME =		duo_unix-${V}
CATEGORIES =		sysutils

SHARED_LIBS =		duo 0.0 # 3.0

MAINTAINER =		James Turner <james@calminferno.net>

HOMEPAGE =		https://www.duosecurity.com/docs/duounix
MASTER_SITES =		https://dl.duosecurity.com/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

WANTLIB =		c crypto ssl

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--without-pam

FAKE_FLAGS =		docdir="${PREFIX}/share/doc/login_duo" \
			includedir="${PREFIX}/include/duo" \
			sbindir="${PREFIX}/sbin" \
			sysconfdir="${PREFIX}/share/examples/login_duo"

# Broken on OpenBSD
NO_TEST =		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/login_duo/login_duo.8

.include <bsd.port.mk>
