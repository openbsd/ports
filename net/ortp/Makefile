# $OpenBSD: Makefile,v 1.16 2021/01/21 15:43:58 kirby Exp $

COMMENT =		RTP (RFC3550) library
DISTNAME =		ortp-0.25.0
REVISION =		0

SHARED_LIBS +=	ortp                 2.1      # 10.0

CATEGORIES =		net multimedia
HOMEPAGE =		https://www.linphone.org/technical-corner/ortp
# LGPLv2.1
PERMIT_PACKAGE =	Yes

WANTLIB =		crypto m pthread ssl

MASTER_SITES =		https://download.savannah.nongnu.org/releases/linphone/ortp/sources/

SEPARATE_BUILD =	Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--enable-ssl-hmac \
			--enable-doxygen=no

# OpenBSD does not support AI_V4MAPPED/AI_ALL
CONFIGURE_ENV =		CFLAGS="${CFLAGS} -DAI_V4MAPPED=0 -DAI_ALL"

.include <bsd.port.mk>
