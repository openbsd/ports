# $OpenBSD: Makefile,v 1.6 2015/09/18 10:24:17 ajacoutot Exp $

COMMENT=		authentication provider for KerberosV

GIT_PROJECT=		login_krb5
GIT_COMMIT=		557c123

DISTNAME=		${GIT_COMMIT}
PKGNAME=		${GIT_PROJECT}-5.8.1
REVISION=		1

DIST_SUBDIR=		${GIT_PROJECT}
WRKDIST=		${WRKDIR}/${GIT_PROJECT}-${GIT_COMMIT}

CATEGORIES=		sysutils

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

HOMEPAGE=		http://repo.or.cz/login_krb5.git

# ISC
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c com_err crypto pthread util

MASTER_SITES=		http://repo.or.cz/login_krb5.git/snapshot/

MODULES=		security/heimdal

NO_TEST=		Yes

FAKE_FLAGS=		BINDIR=${PREFIX}/libexec/auth \
			MANDIR=${PREFIX}/man/man

pre-configure:
	sed -i 's,/usr/local,${LOCALBASE},g' \
		${WRKSRC}/Makefile.inc \
		${WRKSRC}/login_krb5-or-pwd/Makefile \
		${WRKSRC}/login_krb5/Makefile

.include <bsd.port.mk>
