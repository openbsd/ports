# $OpenBSD: Makefile,v 1.12 2017/01/31 09:59:57 sthen Exp $

COMMENT =		RTP (RFC3550) library
DISTNAME =		ortp-0.24.2
REVISION =		3

SHARED_LIBS +=	ortp                 2.0      # 9.0

CATEGORIES =		net multimedia
HOMEPAGE =		http://www.linphone.org/eng/documentation/dev/ortp.html
MAINTAINER =		Vadim Zhukov <zhuk@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		crypto m pthread ssl

MASTER_SITES =		http://download.savannah.nongnu.org/releases/linphone/ortp/sources/

SEPARATE_BUILD =	Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--enable-ssl-hmac \
			--enable-doxygen=no

# OpenBSD does not support AI_V4MAPPED/AI_ALL
CONFIGURE_ENV =		CFLAGS="${CFLAGS} -DAI_V4MAPPED=0 -DAI_ALL"

.include <bsd.port.mk>
