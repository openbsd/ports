# $OpenBSD: Makefile,v 1.1.1.1 2013/11/11 09:23:09 zhuk Exp $
COMMENT =		RTP (RFC3550) library
DISTNAME =		ortp-0.22.0

SHARED_LIBS =		ortp		0.0

CATEGORIES =		net multimedia
HOMEPAGE =		http://www.linphone.org/eng/documentation/dev/ortp.html

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		crypto m pthread

MASTER_SITES =		http://download.savannah.nongnu.org/releases/linphone/ortp/sources/

BUILD_DEPENDS =		devel/doxygen \
			security/libsrtp

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	${CONFIGURE_SHARED} \
			--disable-zrtp \
			--enable-ssl-hmac \
			--enable-tests \
			--with-srtp=${LOCALBASE}

post-install:
	rm -Rf ${PREFIX}/share/doc/ortp
	mv ${PREFIX}/share/doc/${DISTNAME} ${PREFIX}/share/doc/ortp

.include <bsd.port.mk>
