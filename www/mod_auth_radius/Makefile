# $OpenBSD: Makefile,v 1.14 2006/11/12 23:28:42 jcs Exp $

# This port currently only works with archs supporting dynamic loading
# and has Apache that supports DSO's.
SHARED_ONLY=	Yes

DISTNAME=	mod_auth_radius-1.5.7
PKGNAME=	${DISTNAME}p2
CATEGORIES=	www

# Apache
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

COMMENT=	"Apache RADIUS authentication module"
HOMEPAGE=	http://www.freeradius.org/mod_auth_radius/
MASTER_SITES=	ftp://ftp.freeradius.org/pub/radius/
EXTRACT_SUFX=	.tar

NO_REGRESS=	Yes

WRKDIST=	${WRKDIR}/${DISTNAME}

do-build:
	@cd ${WRKSRC}; /usr/sbin/apxs -c mod_auth_radius.c
	@sed 's,!!PREFIX!!,${PREFIX},' \
		< ${FILESDIR}/mod_auth_radius-enable \
		> ${WRKBUILD}/mod_auth_radius-enable

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mod_auth_radius
	${INSTALL_DATA} ${WRKSRC}/mod_auth_radius.so ${PREFIX}/lib
	${INSTALL_SCRIPT} ${WRKBUILD}/mod_auth_radius-enable ${PREFIX}/sbin
	${INSTALL_DATA} ${WRKSRC}/httpd.conf \
		${PREFIX}/share/examples/mod_auth_radius/httpd.conf-example
	${INSTALL_DATA} ${WRKSRC}/htaccess \
		${PREFIX}/share/examples/mod_auth_radius/htaccess-example

.include <bsd.port.mk>
