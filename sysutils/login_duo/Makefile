# $OpenBSD: Makefile,v 1.28 2020/05/19 23:41:06 jturner Exp $

COMMENT =		two-factor authentication for unix systems

V =			1.11.4
PKGNAME =		login_duo-${V}
DISTNAME =		duo_unix-${V}
CATEGORIES =		sysutils

MAINTAINER =		James Turner <james@calminferno.net>

HOMEPAGE =		https://duo.com/docs/loginduo/
MASTER_SITES =		https://dl.duosecurity.com/

# GPLv2
PERMIT_PACKAGE =	Yes

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
