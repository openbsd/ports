COMMENT =		two-factor authentication for unix systems

V =			2.0.3
REVISION =              0
PKGNAME =		login_duo-${V}
DISTNAME =		duo_unix-${V}
CATEGORIES =		sysutils

MAINTAINER =		James Turner <james@calminferno.net>

HOMEPAGE =		https://duo.com/docs/loginduo/
SITES =			https://dl.duosecurity.com/

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
