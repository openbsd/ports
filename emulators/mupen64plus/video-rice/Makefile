# $OpenBSD: Makefile,v 1.4 2012/12/24 09:23:07 bentley Exp $

COMMENT =		n64 emulator opengl video plugin

REVISION =		0

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		GL SDL m png pthread stdc++ z
LIB_DEPENDS =		devel/sdl graphics/png
MUPEN64PLUS_MOD = 	video-rice

.include <bsd.port.mk>
