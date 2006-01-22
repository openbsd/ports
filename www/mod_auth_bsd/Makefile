# $OpenBSD: Makefile,v 1.4 2006/01/22 13:25:34 alek Exp $

COMMENT=	"provides HTTP Basic authentication via bsd auth"
DISTNAME=	bsdauth-0.8.2
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
WANTLIB=		event

NO_REGRESS=	Yes

post-build:
	@sed 's,_PREFIX_,${PREFIX},' \
		< ${FILESDIR}/mod_auth_bsd-enable \
		> ${WRKBUILD}/mod_auth_bsd-enable

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mod_auth_bsd
	${INSTALL_DATA} ${WRKSRC}/INSTALL \
		${PREFIX}/share/doc/mod_auth_bsd/README
	${INSTALL_DATA} ${WRKBUILD}/mod_auth_bsd.so ${PREFIX}/lib
	${INSTALL_SCRIPT} ${WRKBUILD}/mod_auth_bsd-enable ${PREFIX}/sbin

.include <bsd.port.mk>
