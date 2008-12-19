# $OpenBSD: Makefile,v 1.2 2008/12/19 12:57:53 pea Exp $

COMMENT =	Really Awesome New Cisco confIg Differ

DISTNAME =	rancid-2.3.1
PKGNAME = 	${DISTNAME}p0
CATEGORIES =	sysutils

HOMEPAGE =	http://www.shrubbery.net/rancid/

MAINTAINER =	Pierre-Emmanuel Andre <pea@openbsd.org>

# Custom
PERMIT_PACKAGE_CDROM =	"not for commercial use"
PERMIT_DISTFILES_CDROM ="not for commercial use"
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	c

MASTER_SITES =	ftp://ftp.shrubbery.net/pub/rancid/

BUILD_DEPENDS =	::lang/expect

AUTOMAKE_VERSION =	 1.8
CONFIGURE_STYLE = 	automake
CONFIGURE_ARGS =	--prefix=${PREFIX} \
			--localstatedir=/var/rancid/ \
			--disable-mk-localstatedir

USE_GMAKE =	yes

pre-configure:
	@cp ${FILESDIR}/fnlogin.in ${WRKSRC}/bin/fnlogin.in

post-install:
	${SUBST_CMD} -c ${FILESDIR}/README.OpenBSD ${WRKBUILD}/README.OpenBSD
	${INSTALL_DATA} ${WRKBUILD}/README.OpenBSD \
		${PREFIX}/share/doc/rancid/README.OpenBSD

.include <bsd.port.mk>
