# $OpenBSD: Makefile,v 1.2 2019/05/17 16:19:37 sthen Exp $

COMMENT =	Qodem Terminal Emulator

DISTNAME =	qodem-1.0.0
REVISION =	0

CATEGORIES =	comms

HOMEPAGE =	http://qodem.sourceforge.net/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# CC0 (Public Domain)
# MIT (UTF-8 decoder in source/codepage.c)
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c curses util

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=qodem/}

USE_GMAKE =	Yes

CONFIGURE_STYLE = gnu

CONFIGURE_ARGS = --disable-sdl --disable-upnp

NO_TEST =	Yes

.include <bsd.port.mk>
