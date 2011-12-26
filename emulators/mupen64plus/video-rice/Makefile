# $OpenBSD: Makefile,v 1.2 2011/12/26 22:58:48 bentley Exp $

COMMENT =		n64 emulator opengl video plugin

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		GL m stdc++ z SDL png 
LIB_DEPENDS =		devel/sdl graphics/png
MUPEN64PLUS_MOD = 	video-rice

# Use SSE instructions on amd64 only
.if ${MACHINE_ARCH} != "amd64"
MAKE_FLAGS = 		CC=${CC} CXX=${CXX} V=1 NO_ASM=1
.endif

# resolve 'no newline at end of file' warning
post-patch:
	echo >> ${WRKSRC}/src/osal_preproc.h

.include <bsd.port.mk>
