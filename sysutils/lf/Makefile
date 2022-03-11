COMMENT =	terminal file manager inspired by ranger written in Go

MODGO_MODNAME =	github.com/gokcehan/lf
MODGO_VERSION =	v0.0.0-20210413204849-4601e74d666e

R =		22
DISTNAME =	lf-${R}
WRKDIST =	${WRKDIR}/github.com/gokcehan/lf@${MODGO_VERSION}

CATEGORIES =	sysutils

HOMEPAGE =	https://github.com/gokcehan/lf

MAINTAINER =	Chang, Chu-Kuan <cckuan@changchukuan.name>
# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=		c pthread

MODULES =		lang/go

RUN_DEPENDS =		devel/desktop-file-utils

MODGO_MODULES =	\
	github.com/gdamore/encoding		 v1.0.0 \
	github.com/gdamore/tcell/v2		 v2.3.1 \
	github.com/gokcehan/tcell/v2		 v2.2.1-0.20210329222449-4dd2d52e83ef \
	github.com/lucasb-eyer/go-colorful	 v1.0.3 \
	github.com/mattn/go-runewidth		 v0.0.10 \
	github.com/rivo/uniseg			 v0.1.0 \
	golang.org/x/sys			 v0.0.0-20201119102817-f84b799fce68 \
	golang.org/x/term			 v0.0.0-20210220032956-6a3ed077a48d \
	golang.org/x/text			 v0.3.0 \
	gopkg.in/djherbis/times.v1		 v1.2.0

MODGO_MODFILES =	\
	golang.org/x/term	 v0.0.0-20201210144234-2321bbc49cbf

do-install:
	${INSTALL_PROGRAM} ${WRKDIR}/go/bin/lf ${PREFIX}/bin
	${INSTALL_MAN_DIR} ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/lf
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_MAN} ${WRKSRC}/lf.1 ${PREFIX}/man/man1
	${INSTALL_DATA} ${WRKSRC}/etc/lfrc.example ${PREFIX}/share/examples/lf
	${INSTALL_DATA} ${WRKSRC}/lf.desktop ${PREFIX}/share/applications

.include <bsd.port.mk>
