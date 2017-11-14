# $OpenBSD: Makefile,v 1.1.1.1 2017/11/14 20:26:49 fcambus Exp $

COMMENT =	Qodem Terminal Emulator

DISTNAME =	qodem-1.0.0

CATEGORIES =	comms

HOMEPAGE =	http://qodem.sourceforge.net/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# CC0 (Public Domain)
# MIT (UTF-8 decoder in source/codepage.c)
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	c ncursesw util

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=qodem/}

USE_GMAKE =	Yes

CONFIGURE_STYLE = gnu

CONFIGURE_ARGS = --disable-sdl --disable-upnp

NO_TEST =	Yes

.include <bsd.port.mk>
