# $OpenBSD: Makefile,v 1.2 2004/12/11 13:29:21 alek Exp $

COMMENT=	"provides HTTP Basic authentication via bsd auth"
DISTNAME=	bsdauth-0.7
EXTRACT_SUFX=	.tgz
PKGNAME=	${DISTNAME:L:S/bsdauth/mod_auth_bsd/}
CATEGORIES=	www
MASTER_SITES=	http://www.25thandclement.com/~william/projects/releases/

HOMEPAGE=	http://www.25thandclement.com/~william/projects/bsdauth.html

# ISC-like
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=		c

NO_REGRESS=	Yes

do-configure:
	@perl -pi -e 's,/usr/local,${PREFIX},g' \
		${WRKSRC}/INSTALL

post-build:
	@sed 's,_PREFIX_,${PREFIX},' \
		< ${FILESDIR}/mod_auth_bsd-enable \
		> ${WRKBUILD}/mod_auth_bsd-enable

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mod_auth_bsd
	${INSTALL_DATA} ${WRKSRC}/INSTALL \
		${PREFIX}/share/doc/mod_auth_bsd/README
	${INSTALL_DATA} ${WRKBUILD}/mod_auth_bsd.so ${PREFIX}/lib
	${INSTALL_PROGRAM} ${WRKBUILD}/login_bsd ${PREFIX}/libexec
	${INSTALL_SCRIPT} ${WRKBUILD}/mod_auth_bsd-enable ${PREFIX}/sbin

.include <bsd.port.mk>
