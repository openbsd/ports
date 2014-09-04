# $OpenBSD: Makefile,v 1.5 2014/09/04 21:28:56 zhuk Exp $
COMMENT =		RTP (RFC3550) library
DISTNAME =		ortp-0.23.0

SHARED_LIBS =		ortp		1.0

CATEGORIES =		net multimedia
HOMEPAGE =		http://www.linphone.org/eng/documentation/dev/ortp.html
MAINTAINER =		Vadim Zhukov <zhuk@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		crypto m pthread

MASTER_SITES =		http://download.savannah.nongnu.org/releases/linphone/ortp/sources/

BUILD_DEPENDS =		devel/doxygen \
			security/libsrtp

SEPARATE_BUILD =	Yes

# TODO: remove "autoconf" when arc4random() patches get accepted upstream
CONFIGURE_STYLE =	gnu autoconf
AUTOCONF_VERSION =	2.68
CONFIGURE_ARGS =	${CONFIGURE_SHARED} \
			--disable-zrtp \
			--enable-ssl-hmac \
			--with-srtp=${LOCALBASE}

# the test being disabled is needed for PolarSSL only
CONFIGURE_ARGS +=	--enable-broken-srtp

# no support for AI_V4MAPPED yet
CONFIGURE_ENV =		CFLAGS="${CFLAGS} -DAI_V4MAPPED=0"

post-install:
	rm -Rf ${PREFIX}/share/doc/ortp
	mv ${PREFIX}/share/doc/${DISTNAME} ${PREFIX}/share/doc/ortp

.include <bsd.port.mk>
