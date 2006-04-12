# $OpenBSD: Makefile,v 1.13 2006/04/12 21:01:46 david Exp $

COMMENT=	"Web intrusion detection and prevention engine"

# This port currently only works with archs supporting dynamic loading
# and has Apache that supports DSO's.
SHARED_ONLY=	Yes

DISTNAME=	modsecurity-apache-1.9.1
PKGNAME=	${DISTNAME}p0
CATEGORIES=	www

MASTER_SITES=	http://www.modsecurity.org/download/
MASTER_SITES0=	${MASTER_SITE_SOURCEFORGE:=mod-security/}

HOMEPAGE=	http://www.modsecurity.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_REGRESS=	Yes

DOCS=	CHANGES INSTALL LICENSE README doc/modsecurity-apache-manual-1.9.pdf
SUBST_VARS=	PKGNAME

do-build:
	cd ${WRKSRC}/apache1 && /usr/sbin/apxs -Wc,"${CFLAGS}" -c \
		mod_security.c -o ${WRKBUILD}/mod_security.so
	sed 's,!!PREFIX!!,${PREFIX},' < ${FILESDIR}/mod_security-enable \
		> ${WRKBUILD}/mod_security-enable

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mod_security
	${INSTALL_DATA} ${WRKBUILD}/mod_security.so ${PREFIX}/lib
	${INSTALL_SCRIPT} ${WRKBUILD}/mod_security-enable ${PREFIX}/sbin
	${INSTALL_DATA} ${WRKSRC}/httpd.conf.example-* \
		${PREFIX}/share/examples/mod_security
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mod_security
.for i in ${DOCS}
	 ${INSTALL_DATA} ${WRKSRC}/${i} ${PREFIX}/share/doc/mod_security
.endfor

.include <bsd.port.mk>
