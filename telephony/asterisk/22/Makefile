VER=		22.11.0

PJ_V=		2.17
SHLIB_V=	0.0
VERSION_SPEC=	>=22.0,<23.0

# pick up new LTS branches but skip shorter-term standard release cycle
PORTROACH=	limitw:0,even

MENUSELECT=	--enable ENABLE_SRTP_AES_192 \
		--enable ENABLE_SRTP_AES_256

# Asterisk requires either nested functions (gcc extension), or -fblocks (clang).
# Keep telephony/asterisk-g729 in sync.
COMPILER=	base-clang ports-gcc

.include <bsd.port.mk>
