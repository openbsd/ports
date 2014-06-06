# $OpenBSD: Makefile,v 1.29 2014/06/06 08:14:07 pea Exp $

COMMENT = 	gnu privacy guard - a free PGP replacement

DISTNAME = 	gnupg-2.0.23
CATEGORIES = 	security

MASTER_SITES =	${MASTER_SITES_GNUPG:=gnupg/}

HOMEPAGE = 	http://www.gnupg.org/

MAINTAINER = 	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM = 	Yes

WANTLIB +=		assuan bz2 c crypto curl gcrypt
WANTLIB +=		gpg-error idn ksba pth pthread
WANTLIB +=		readline ssl termcap usb z

EXTRACT_SUFX = 		.tar.bz2

MODULES = 		devel/gettext

FLAVORS = 		ldap
FLAVOR ?=

LIB_DEPENDS =		archivers/bzip2 \
			devel/libusb-compat \
			security/libassuan \
			security/libgcrypt \
			security/libksba \
			net/curl \
			devel/pth

.if ${FLAVOR:Mldap}
CONFIGURE_ARGS +=	--enable-ldap
WANTLIB +=		ldap
LIB_DEPENDS +=		databases/openldap
.else
CONFIGURE_ARGS +=	--disable-ldap
.endif

RUN_DEPENDS = 		security/pinentry

# gpg-agent must be installed to run the regress tests
TEST_DEPENDS = 	${FULLPKGNAME}:${BUILD_PKGPATH}

USE_GMAKE = 		Yes
USE_GROFF =		Yes

CONFIGURE_STYLE = 	gnu
CONFIGURE_ENV = 	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS += 	docdir=${LOCALBASE}/share/doc/gnupg2 \
			--enable-gpgtar \
			--with-adns=no

# Avoid conflict with gnupg-1.x
post-install:
	@mv ${PREFIX}/man/man1/gpg-zip.1 ${PREFIX}/man/man1/gpg2-zip.1

.include <bsd.port.mk>
