# $OpenBSD: Makefile,v 1.10 2009/06/03 00:48:51 pyr Exp $

COMMENT=	Apache Kerberos authentication module

DISTNAME=	mod_auth_kerb-5.3
PKGNAME=	${DISTNAME}p2
CATEGORIES=	www

HOMEPAGE=	http://modauthkerb.sourceforge.net/

MODULES+=	apache-module
MAINTAINER=	Chris Kuethe <ckuethe@openbsd.org>

# combination of 2- and 3-clause BSD, MIT, and export crypto warnings
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ssl gssapi krb5 crypto

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=modauthkerb/}

NO_REGRESS=	Yes
USE_GMAKE=	Yes

MODAPACHE_NAME=	auth_kerb
MODAPACHE_LOCATION=	${WRKBUILD}/src

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	KRB5_CPPFLAGS="-I/usr/include/kerberosV" \
		KRB5_LDFLAGS="-lkrb5 -lgssapi -lssl -lcrypto"

post-build:
	@${MODAPACHE_CREATE_ENABLE_SCRIPT}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mod_auth_kerb
	${INSTALL_DATA} ${FILESDIR}/README ${PREFIX}/share/doc/mod_auth_kerb
	${MODAPACHE_INSTALL}

.include <bsd.port.mk>
