# $OpenBSD: Makefile,v 1.19 2017/01/06 14:07:45 pea Exp $

COMMENT =	Really Awesome New Cisco confIg Differ

DISTNAME =	rancid-3.6.1
EPOCH = 	0
CATEGORIES =	sysutils

HOMEPAGE =	http://www.shrubbery.net/rancid/

MAINTAINER =	Pavel Korovin <p@tristero.se>

# Custom
PERMIT_PACKAGE_CDROM =	not for commercial use
PERMIT_PACKAGE_FTP =	Yes

WANTLIB =	c util

MASTER_SITES =	ftp://ftp.shrubbery.net/pub/rancid/

RUN_DEPENDS =	lang/expect
BUILD_DEPENDS =	${RUN_DEPENDS}

LOCALSTATEDIR =	${BASELOCALSTATEDIR}/rancid

CONFIGURE_STYLE = 	gnu
CONFIGURE_ARGS =	--prefix=${PREFIX} \
			--disable-mk-localstatedir

MAKE_FLAGS =	sysconfdir=${BASESYSCONFDIR}/rancid
FAKE_FLAGS =	sysconfdir=${PREFIX}/share/examples/rancid
USE_GMAKE =	yes

.include <bsd.port.mk>
