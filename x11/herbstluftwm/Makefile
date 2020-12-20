# $OpenBSD: Makefile,v 1.19 2020/12/20 05:48:06 bket Exp $

COMMENT =		manual tiling window manager
DISTNAME =		herbstluftwm-0.9.0
REVISION =		0
CATEGORIES =		x11

HOMEPAGE =		https://herbstluftwm.org/

MAINTAINER =		Lucas <lucas@sexy.is>, \
			Florian Viehweger <openbsd@out-of-creativity.de>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB +=		X11 Xext Xinerama Xrandr c m pthread ${COMPILER_LIBCXX}

MASTER_SITES =		https://herbstluftwm.org/tarballs/

# c++11
COMPILER =		base-clang ports-gcc

MODULES +=		devel/cmake \
			lang/python
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
MODPY_RUNDEP =		No

RUN_DEPENDS +=		devel/desktop-file-utils \
			shells/bash \
			x11/dmenu \
			x11/dzen2,-gadgets

# tarball already includes generated manpages
# saves depend on asciidoc
CONFIGURE_ARGS +=	-DWITH_DOCUMENTATION=NO

# requires unported pyewmh, pytest-xvfb and maybe more
NO_TEST =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/herbstluftwm
	${INSTALL_SCRIPT} ${WRKINST}/etc/xdg/herbstluftwm/autostart \
		${PREFIX}/share/examples/herbstluftwm/
	mv ${WRKINST}/etc/xdg/herbstluftwm/dmenu_run_hlwm \
		${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKINST}/etc/xdg/herbstluftwm/panel.sh \
		${PREFIX}/share/examples/herbstluftwm/
	${INSTALL_SCRIPT} ${WRKINST}/etc/xdg/herbstluftwm/restartpanels.sh \
		${PREFIX}/share/examples/herbstluftwm/
	${INSTALL_MAN} ${WRKSRC}/doc/herbstclient.1 \
		${PREFIX}/man/man1/herbstclient.1
	${INSTALL_MAN} ${WRKSRC}/doc/herbstluftwm.1 \
		${PREFIX}/man/man1/herbstluftwm.1
	${INSTALL_MAN} ${WRKSRC}/doc/herbstluftwm-tutorial.7 \
		${PREFIX}/man/man7/herbstluftwm-tutorial.7

.include <bsd.port.mk>
