# $OpenBSD: Makefile,v 1.5 2014/07/12 11:28:23 sthen Exp $

COMMENT =		BSD-licensed PGP implementation

DISTNAME =		netpgp-20140220

SHARED_LIBS +=		mj                        1.0 # 0.0
SHARED_LIBS +=		netpgp                    1.0 # 0.0

CATEGORIES =		security

HOMEPAGE =		http://www.netpgp.com

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		bz2 c crypto z

MASTER_SITES =		http://ftp.netbsd.org/pub/pkgsrc/distfiles/LOCAL_PORTS/ \
			ftp://ftp.netbsd.org/pub/pkgsrc/distfiles/LOCAL_PORTS/

LIB_DEPENDS =		archivers/bzip2
TEST_DEPENDS =	devel/autoconf/2.68

TEST_FLAGS =		AUTOCONF_VERSION=2.68

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED}
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include -DOPENSSL_NO_IDEA" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
