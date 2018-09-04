# $OpenBSD: Makefile,v 1.18 2018/09/04 12:46:22 espie Exp $

COMMENT =		two-factor authentication for unix systems

V =			1.10.1
PKGNAME =		login_duo-${V}
DISTNAME =		duo_unix-${V}
REVISION =		1
CATEGORIES =		sysutils

MAINTAINER =		James Turner <james@calminferno.net>

HOMEPAGE =		https://duo.com/docs/loginduo/
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
