# $OpenBSD: Makefile,v 1.18 2016/11/23 12:27:47 sthen Exp $

COMMENT =	Really Awesome New Cisco confIg Differ

DISTNAME =	rancid-3.5.1
DISTPATCH =	1
PKGNAME =	${DISTNAME}pl${DISTPATCH}
EPOCH = 	0
CATEGORIES =	sysutils

HOMEPAGE =	http://www.shrubbery.net/rancid/

MAINTAINER =	Pierre-Emmanuel Andre <pea@openbsd.org>

# Custom
PERMIT_PACKAGE_CDROM =	not for commercial use
PERMIT_PACKAGE_FTP =	Yes

WANTLIB =	c util

MASTER_SITES =	ftp://ftp.shrubbery.net/pub/rancid/

PATCHFILES =	${DISTNAME}.p${DISTPATCH}.gz

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
