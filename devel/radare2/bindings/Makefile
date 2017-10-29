# $OpenBSD: Makefile,v 1.4 2017/10/29 08:58:57 jasper Exp $

COMMENT =		Vala bindings for Radare2

DISTNAME =		radare2-bindings-${V}
REVISION =		0

BUILD_DEPENDS =		devel/radare2/main>=${V}
RUN_DEPENDS =		lang/vala \
			devel/radare2/main>=${V}

PKG_ARCH =		*

# This would go if we wanted to package other bindings.
NO_BUILD =		Yes

# Only install vala bindings for now. Maybe more in the future.
INSTALL_TARGET =	install-vapi

.include <bsd.port.mk>
