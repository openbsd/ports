# $OpenBSD: Makefile,v 1.7 2019/04/30 12:16:46 edd Exp $

COMMENT =		Vala bindings for Radare2

V =			3.4.1
SUBST_VARS +=		V

BUILD_DEPENDS =		devel/radare2/main>=${V}
RUN_DEPENDS =		lang/vala \
			devel/radare2/main>=${V}

GH_PROJECT =		radare2-bindings
GH_TAGNAME =		${V}

PKG_ARCH =		*

# This would go if we wanted to package other bindings.
NO_BUILD =		Yes

# Only install vala bindings for now. Maybe more in the future.
INSTALL_TARGET =	install-vapi

.include <bsd.port.mk>
