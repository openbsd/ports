# $OpenBSD: Makefile,v 1.15 2020/07/31 12:28:18 sthen Exp $

COMMENT =		RTP (RFC3550) library
DISTNAME =		ortp-0.25.0

SHARED_LIBS +=	ortp                 2.1      # 10.0

CATEGORIES =		net multimedia
HOMEPAGE =		http://www.linphone.org/eng/documentation/dev/ortp.html
# LGPLv2.1
PERMIT_PACKAGE =	Yes

WANTLIB =		crypto m pthread ssl

MASTER_SITES =		http://download.savannah.nongnu.org/releases/linphone/ortp/sources/

SEPARATE_BUILD =	Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--enable-ssl-hmac \
			--enable-doxygen=no

# OpenBSD does not support AI_V4MAPPED/AI_ALL
CONFIGURE_ENV =		CFLAGS="${CFLAGS} -DAI_V4MAPPED=0 -DAI_ALL"

.include <bsd.port.mk>
