COMMENT =		mount SMB shares via FUSE

DISTNAME =		susmb-0.9

CATEGORIES =		sysutils

HOMEPAGE =		https://codemadness.org/git/susmb/

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# GPLv3
PERMIT_PACKAGE =	Yes

# uses unveil()
WANTLIB += c fuse smbclient

SITES =			https://codemadness.org/releases/susmb/

LIB_DEPENDS =		net/samba

MAKE_FLAGS =		SMBCLIENT_CFLAGS="`pkg-config --cflags smbclient`" \
			SMBCLIENT_LDFLAGS="`pkg-config --libs smbclient`" \
			FUSE_CFLAGS="`pkg-config --cflags fuse`" \
			FUSE_LDFLAGS="`pkg-config --libs fuse`"

FAKE_FLAGS =		PREFIX="${TRUEPREFIX}"

NO_TEST =		Yes

.include <bsd.port.mk>
