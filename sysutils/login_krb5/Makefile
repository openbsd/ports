COMMENT=		authentication provider for KerberosV

GIT_PROJECT=		login_krb5
GIT_COMMIT=		da478b6
GIT_COMMIT=		69dab25
DISTNAME=		${GIT_COMMIT}
PKGNAME=		${GIT_PROJECT}-6.9

DIST_SUBDIR=		${GIT_PROJECT}
WRKDIST=		${WRKDIR}/${GIT_PROJECT}-${GIT_COMMIT}

CATEGORIES=		sysutils security

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

HOMEPAGE=		http://repo.or.cz/login_krb5.git

# ISC
PERMIT_PACKAGE=		Yes

# uses pledge()
WANTLIB += c

MASTER_SITES=		http://repo.or.cz/login_krb5.git/snapshot/

MODULES=		security/heimdal

NO_TEST=		Yes

FAKE_FLAGS=		BINDIR=${PREFIX}/libexec/auth \
			MANDIR=${PREFIX}/man/man

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
