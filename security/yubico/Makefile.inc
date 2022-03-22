CATEGORIES+=	security security/yubico

HOMEPAGE?=	https://developers.yubico.com/${YK_PROJECT}/

# BSD
PERMIT_PACKAGE?=	Yes

.if !defined(GH_ACCOUNT)
MASTER_SITES?=	https://developers.yubico.com/${YK_PROJECT}/releases/
.endif
