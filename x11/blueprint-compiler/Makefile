COMMENT =		markup language for GTK user interfaces
V =			0.18.0
DIST_TUPLE =		gnome	jwestman	blueprint-compiler	v${V}	.
WRKDIST =		${WRKDIR}/blueprint-compiler-v${V}
CATEGORIES =		x11 lang

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# GLPLv3
PERMIT_PACKAGE =	Yes

MODULES =		devel/meson \
			lang/python

RUN_DEPENDS =		devel/py-gobject3

PORTHOME =		${WRKDIR}

TEST_IS_INTERACTIVE =	x11

.include <bsd.port.mk>
