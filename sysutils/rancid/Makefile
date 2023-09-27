COMMENT =	Really Awesome New Cisco confIg Differ

DISTNAME =	rancid-3.13
EPOCH = 	0
CATEGORIES =	sysutils
REVISION =	0

HOMEPAGE =	https://www.shrubbery.net/rancid/

MAINTAINER =	Pavel Korovin <pvk@openbsd.org>

# Custom
PERMIT_PACKAGE =	Yes

WANTLIB =	c util

SITES =		ftp://ftp.shrubbery.net/pub/rancid/

RUN_DEPENDS =	lang/expect
BUILD_DEPENDS =	${RUN_DEPENDS}

LOCALSTATEDIR =	${BASELOCALSTATEDIR}/rancid

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--prefix=${PREFIX} \
			--disable-mk-localstatedir

MAKE_FLAGS =	sysconfdir=${BASESYSCONFDIR}/rancid
FAKE_FLAGS =	sysconfdir=${PREFIX}/share/examples/rancid
USE_GMAKE =	yes

.include <bsd.port.mk>
