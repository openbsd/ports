# ignore 0.* and t* (pre) releases
PORTROACH =		limit:^A

COMMENT =		UEFI firmware image viewer and editor
DIST_TUPLE =		github	LongSoft	UEFITool	A68	.
PKGNAME =		${DISTNAME:S/A//}

CATEGORIES =		sysutils

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB =		${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Widgets c m

MODULES =		devel/cmake \
			x11/qt6

NO_TEST =		Yes

.include <bsd.port.mk>
