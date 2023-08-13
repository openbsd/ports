COMMENT		= OpenBSD port of libinput
DISTNAME	= libinput-openbsd-20230714
REVISION	= 1

SHARED_LIBS	= input 0.0

GH_ACCOUNT	= mherrb
GH_PROJECT	= libinput
GH_COMMIT	= 8d1fa015a90733b9db502bfe2de31f15b1d85b48

CATEGORIES	= wayland
HOMEPAGE	= https://github.com/sizeofvoid/libinput

# MIT
PERMIT_PACKAGE	= Yes

post-install:
	cd $(WRKSRC) &&  make includes DESTDIR=""

DEBUG_PACKAGES	= ${BUILD_PACKAGES}

.include <bsd.port.mk>
