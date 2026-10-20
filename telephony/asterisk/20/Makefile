VER=		20.21.0
REVISION=	0

PJ_V=		2.17
SHLIB_V=	0.0
VERSION_SPEC=	>=20.0,<21.0

MENUSELECT=	--enable chan_sip \
		--enable ENABLE_SRTP_AES_192 \
		--enable ENABLE_SRTP_AES_256

# Asterisk requires either nested functions (gcc extension), or -fblocks (clang).
# Keep telephony/asterisk-g729 in sync.
COMPILER=	base-clang ports-gcc

.include <bsd.port.mk>
