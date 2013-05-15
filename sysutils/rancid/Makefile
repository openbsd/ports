# $OpenBSD: Makefile,v 1.17 2013/05/15 09:49:40 sebastia Exp $

COMMENT =	Really Awesome New Cisco confIg Differ

DISTNAME =	rancid-2.3.8
REVISION =	0
EPOCH = 	0
CATEGORIES =	sysutils

HOMEPAGE =	http://www.shrubbery.net/rancid/

MAINTAINER =	Pierre-Emmanuel Andre <pea@openbsd.org>

# Custom
PERMIT_PACKAGE_CDROM =	not for commercial use
PERMIT_PACKAGE_FTP =	Yes

WANTLIB =	c util

MASTER_SITES =	ftp://ftp.shrubbery.net/pub/rancid/

RUN_DEPENDS =	lang/expect
BUILD_DEPENDS =	${RUN_DEPENDS}

LOCALSTATEDIR =	${BASELOCALSTATEDIR}/rancid

AUTOMAKE_VERSION =	 1.8
CONFIGURE_STYLE = 	automake
CONFIGURE_ARGS =	--prefix=${PREFIX} \
			--disable-mk-localstatedir

USE_GMAKE =	yes
USE_GROFF =	Yes

pre-configure:
	@cp ${FILESDIR}/fnlogin.in ${WRKSRC}/bin/fnlogin.in

.include <bsd.port.mk>
