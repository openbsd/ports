# $OpenBSD: Makefile,v 1.2 2013/03/11 11:41:26 espie Exp $

COMMENT =		BSD-licensed PGP implementation

DISTNAME =		netpgp-20101107

SHARED_LIBS +=		mj                        0.0 # 0.0
SHARED_LIBS +=		netpgp                    0.0 # 0.0

CATEGORIES =		security

HOMEPAGE =		http://www.netpgp.com

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		bz2 c crypto z

MASTER_SITES =		ftp://ftp.netbsd.org/pub/pkgsrc/distfiles/LOCAL_PORTS/

LIB_DEPENDS =		archivers/bzip2
TEST_DEPENDS =	devel/autoconf/2.68

TEST_FLAGS =		AUTOCONF_VERSION=2.68

USE_LIBTOOL =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED}
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include -DOPENSSL_NO_IDEA" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
