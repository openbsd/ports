VER=		22.6.0

PJ_V=		2.15.1
SHLIB_V=	0.0
VERSION_SPEC=	>=22.0,<23.0

# pick up new LTS branches but skip shorter-term standard release cycle
PORTROACH=	limitw:0,even

MENUSELECT=	--enable ENABLE_SRTP_AES_192 \
		--enable ENABLE_SRTP_AES_256 \
		--enable ENABLE_SRTP_AES_GCM

.include <bsd.port.mk>
