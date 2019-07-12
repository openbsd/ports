# $OpenBSD: Makefile,v 1.8 2019/07/12 20:49:05 sthen Exp $

COMMENT =		BSD-licensed PGP implementation

DISTNAME =		netpgp-20140220
REVISION =		0

SHARED_LIBS +=		mj                        1.0 # 0.0
SHARED_LIBS +=		netpgp                    1.0 # 0.0

CATEGORIES =		security

HOMEPAGE =		http://www.netpgp.com

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB +=		bz2 c crypto z

MASTER_SITES =		http://ftp.netbsd.org/pub/pkgsrc/distfiles/LOCAL_PORTS/ \
			ftp://ftp.netbsd.org/pub/pkgsrc/distfiles/LOCAL_PORTS/

LIB_DEPENDS =		archivers/bzip2
TEST_DEPENDS =	devel/autoconf/2.68

TEST_FLAGS =		AUTOCONF_VERSION=2.68

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include -DOPENSSL_NO_IDEA" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
