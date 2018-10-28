# $OpenBSD: Makefile,v 1.22 2018/10/28 17:26:03 ajacoutot Exp $

COMMENT =		two-factor authentication for unix systems

V =			1.10.5
PKGNAME =		login_duo-${V}
DISTNAME =		duo_unix-${V}
CATEGORIES =		sysutils
REVISION =		0

MAINTAINER =		James Turner <james@calminferno.net>

HOMEPAGE =		https://duo.com/docs/loginduo/
MASTER_SITES =		https://dl.duosecurity.com/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

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
