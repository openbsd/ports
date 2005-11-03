# $OpenBSD: Makefile,v 1.1.1.1 2005/11/03 16:23:13 alek Exp $

SHARED_ONLY=	Yes

COMMENT=	"Apache Kerberos authentication module"

VERSION=	5.0-rc6
DISTNAME=	mod_auth_kerb-${VERSION}
PKGNAME=	mod_auth_kerb-${VERSION:S/-//}
CATEGORIES=	www

HOMEPAGE=	http://modauthkerb.sourceforge.net/

MAINTAINER=	Chris Kuethe <ckuethe@ualberta.ca>

# combination of 2- and 3-clause BSD, MIT, and export crypto warnings
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ssl gssapi krb5 crypto

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=modauthkerb/}

NO_REGRESS=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	KRB5_CPPFLAGS="-I/usr/include/kerberosV" \
		KRB5_LDFLAGS="-lkrb5 -lgssapi -lssl -lcrypto"

post-build:
	sed 's,!!PREFIX!!,${PREFIX},' \
		< ${FILESDIR}/mod_auth_kerb-enable \
		> ${WRKBUILD}/mod_auth_kerb-enable

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mod_auth_kerb
	${INSTALL_DATA} ${FILESDIR}/README ${PREFIX}/share/doc/mod_auth_kerb
	${INSTALL_DATA} ${WRKBUILD}/src/mod_auth_kerb.so ${PREFIX}/lib
	${INSTALL_SCRIPT} ${WRKBUILD}/mod_auth_kerb-enable ${PREFIX}/sbin

.include <bsd.port.mk>
