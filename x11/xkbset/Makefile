# $OpenBSD: Makefile,v 1.19 2020/01/06 17:19:24 tb Exp $

COMMENT-main=	X11 keyboard accessibility tool
COMMENT-gui=	GUI for xkbset

DISTNAME=	xkbset-0.5
PKGNAME-main=	xkbset-0.5
REVISION-main=	4
PKGNAME-gui=	xkbset-gui-0.5
REVISION-gui=	3
CATEGORIES=	x11
# BSD
PERMIT_PACKAGE=	Yes

HOMEPAGE=	http://faculty.missouri.edu/~stephen/software/\#xkbset
MASTER_SITES=	http://faculty.missouri.edu/~stephen/software/xkbset/

MAKE_FLAGS=	X11BASE="${X11BASE}"
FAKE_FLAGS=	X11PREFIX="${PREFIX}" \
		INSTALL_DATA="${INSTALL_DATA}" \
		INSTALL_PROGRAM="${INSTALL_PROGRAM}"

MULTI_PACKAGES=	-main -gui

WANTLIB-main=	X11 c

RUN_DEPENDS-gui=x11/xkbset x11/p5-Tk

NO_TEST=	Yes

.include <bsd.port.mk>
