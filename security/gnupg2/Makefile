# $OpenBSD: Makefile,v 1.43 2016/09/19 17:09:37 edd Exp $

COMMENT =	GNU privacy guard - a free PGP replacement

DISTNAME =	gnupg-2.1.15
CATEGORIES = 	security

MASTER_SITES =	${MASTER_SITES_GNUPG:=gnupg/}

HOMEPAGE = 	http://www.gnupg.org/

MAINTAINER = 	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM = 	Yes

WANTLIB +=		assuan bz2 c gcrypt gnutls gpg-error
WANTLIB +=		ksba npth pthread readline sqlite3
WANTLIB +=		termcap usb-1.0 z

EXTRACT_SUFX = 		.tar.bz2

MODULES = 		devel/gettext

FLAVORS = 		ldap
FLAVOR ?=

LIB_DEPENDS =		archivers/bzip2 \
			devel/libusb1 \
			devel/npth \
			security/gnutls \
			security/libassuan>=2.4.3 \
			security/libgcrypt \
			security/libksba>=1.3.4

.if ${FLAVOR:Mldap}
CONFIGURE_ARGS +=	--enable-ldap
WANTLIB +=		lber ldap
LIB_DEPENDS +=		databases/openldap
.else
CONFIGURE_ARGS +=	--disable-ldap
.endif

RUN_DEPENDS = 		security/pinentry

# gpg-agent must be installed to run the regress tests
# Make sure you dont have gpg aliased (e.g. to gpg2) when running tests.
TEST_DEPENDS = 	${FULLPKGNAME}:${BUILD_PKGPATH}
PORTHOME=${WRKDIR}

USE_GMAKE = 		Yes

CONFIGURE_STYLE = 	gnu
CONFIGURE_ENV = 	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS += 	docdir=${LOCALBASE}/share/doc/gnupg2 \
			--enable-gpgtar \
			--with-adns=no

# Avoid conflict with gnupg-1.x
post-install:
	@mv ${PREFIX}/man/man7/gnupg.7 ${PREFIX}/man/man7/gnupg2.7

.include <bsd.port.mk>
