COMMENT =	wayland tiling compositor inspired by ratpoison

V =		3.1.0
DISTNAME =	release_${V}
PKGNAME =	cagebreak-${V}

CATEGORIES =	wayland

HOMEPAGE =	https://cagebreak.project-repo.co/

MAINTAINER =	Jeremie Courreges-Anglas <jca@wxcvbn.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c cairo evdev fontconfig gobject-2.0 input m pango-1.0
WANTLIB += pangocairo-1.0 udev wayland-server xkbcommon

SITES =			https://github.com/project-repo/cagebreak/releases/download/${V}/

# C23
COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

MODULES =		devel/meson \
			wayland/wlroots
BUILD_DEPENDS =		textproc/scdoc \
			wayland/wayland-protocols
LIB_DEPENDS =		devel/pango \
			wayland/libevdev-openbsd

CONFIGURE_STYLE =	meson
CONFIGURE_ARGS =	-Dman-pages=true \
			-Dxwayland=true

WRKDIST =		${WRKDIR}/cagebreak

post-install:
	mv ${WRKINST}/etc/xdg/cagebreak ${PREFIX}/share/doc/cagebreak
	${INSTALL_SCRIPT} ${FILESDIR}/startcagebreak.sh ${PREFIX}/bin/

.include <bsd.port.mk>
