# $OpenBSD: Makefile,v 1.1.1.1 2001/09/01 15:26:13 jcs Exp $

VERSION=	1.5.2
DISTNAME=	mod_auth_radius
PKGNAME=	${DISTNAME}-${VERSION}
CATEGORIES=	www
NEED_VERSION=	1.435

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

COMMENT=	"Apache RADIUS authentication module"
HOMEPAGE=	http://www.freeradius.org/mod_auth_radius/
MASTER_SITES=	ftp://ftp.freeradius.org/pub/radius/
EXTRACT_SUFX=	.tar

MAINTAINER=	Joshua Stein <jcs@rt.fm>

WRKDIST=	${WRKDIR}/${PKGNAME}

post-extract:
	@cp -f ${FILESDIR}/Makefile.OpenBSD ${WRKSRC}/Makefile

post-build:
	@sed 's,!!PREFIX!!,${PREFIX},' \
		< ${FILESDIR}/mod_auth_radius-enable \
		> ${WRKBUILD}/mod_auth_radius-enable

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mod_auth_radius
	${INSTALL_DATA} ${WRKBUILD}/mod_auth_radius.so ${PREFIX}/lib
	${INSTALL_SCRIPT} ${WRKBUILD}/mod_auth_radius-enable ${PREFIX}/sbin
	${INSTALL_DATA} ${WRKBUILD}/httpd.conf \
		${PREFIX}/share/examples/mod_auth_radius/httpd.conf-example
	${INSTALL_DATA} ${WRKBUILD}/htaccess \
		${PREFIX}/share/examples/mod_auth_radius/htaccess-example

.include <bsd.port.mk>
