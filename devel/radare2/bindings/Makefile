# $OpenBSD: Makefile,v 1.3 2016/10/10 12:20:17 feinerer Exp $

COMMENT =		Vala bindings for Radare2

DISTNAME =		radare2-bindings-${V}

BUILD_DEPENDS =		devel/radare2/main>=${V}
RUN_DEPENDS =		lang/vala \
			devel/radare2/main>=${V}

PKG_ARCH =		*

# This would go if we wanted to package other bindings.
NO_BUILD =		Yes

# Only install vala bindings for now. Maybe more in the future.
INSTALL_TARGET =	install-vapi

.include <bsd.port.mk>
