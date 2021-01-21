# $OpenBSD: Makefile,v 1.1.1.1 2021/01/21 17:12:16 paco Exp $

COMMENT =	terminal file manager inspired by ranger written in Go

MODGO_MODNAME =	github.com/gokcehan/lf
MODGO_VERSION =	v0.0.0-20210119014201-3f66f08b8423

DISTNAME =	lf-${MODGO_VERSION}
PKGNAME =	lf-${MODGO_VERSION:C/v([0-9.]*)-([0-9]{8}).*/\1.\2/}
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
	github.com/gdamore/encoding		v1.0.0 \
	github.com/gdamore/tcell/v2		v2.0.0 \
	github.com/lucasb-eyer/go-colorful	v1.0.3 \
	github.com/mattn/go-runewidth		v0.0.9 \
	golang.org/x/sys			v0.0.0-20190626150813-e07cf5db2756 \
	golang.org/x/text			v0.3.0 \
	gopkg.in/djherbis/times.v1		v1.2.0
MODGO_MODFILES =        \
	github.com/mattn/go-runewidth		v0.0.7

do-install:
	${INSTALL_PROGRAM} ${WRKDIR}/go/bin/lf ${PREFIX}/bin
	${INSTALL_MAN_DIR} ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/lf
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_MAN} ${WRKSRC}/lf.1 ${PREFIX}/man/man1
	${INSTALL_DATA} ${WRKSRC}/etc/lfrc.example ${PREFIX}/share/examples/lf
	${INSTALL_DATA} ${WRKSRC}/lf.desktop ${PREFIX}/share/applications

.include <bsd.port.mk>
