# $OpenBSD: Makefile,v 1.3 2012/08/13 06:53:56 bentley Exp $

COMMENT =		n64 emulator opengl video plugin

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		GL m stdc++ z SDL png 
LIB_DEPENDS =		devel/sdl graphics/png
MUPEN64PLUS_MOD = 	video-rice

# resolve 'no newline at end of file' warning
post-patch:
	echo >> ${WRKSRC}/src/osal_preproc.h

.include <bsd.port.mk>
