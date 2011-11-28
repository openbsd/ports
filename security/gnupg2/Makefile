# $OpenBSD: Makefile,v 1.15 2011/11/28 15:38:38 dcoppa Exp $

COMMENT = 	gnu privacy guard - a free PGP replacement

DISTNAME = 	gnupg-2.0.18
CATEGORIES = 	security
REVISION =	1

MASTER_SITES = 	ftp://ftp.gnupg.org/gcrypt/gnupg/ \
		ftp://gd.tuwien.ac.at/privacy/gnupg/gnupg/ \
		ftp://crypto.yashy.com/pub/cryptography/gnupg/ \
		ftp://ftp.planetmirror.com/pub/gnupg/gnupg/ \
		ftp://sunsite.dk/pub/security/gcrypt/gnupg/ \
		ftp://ftp.linux.it/pub/mirrors/gnupg/gnupg/ \
		ftp://pgp.iijlab.net/pub/pgp/gnupg/ \
		ftp://ring.aist.go.jp/pub/net/gnupg/gnupg/

HOMEPAGE = 	http://www.gnupg.org/

MAINTAINER = 	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM = 	Yes
PERMIT_PACKAGE_FTP = 	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP = 	Yes

WANTLIB +=		assuan bz2 c gcrypt gpg-error
WANTLIB +=		ksba pth readline termcap z

EXTRACT_SUFX = 		.tar.bz2

MODULES = 		devel/gettext

FLAVORS = 		ldap
FLAVOR ?=

LIB_DEPENDS =		archivers/bzip2 \
			security/libassuan \
			security/libgcrypt \
			security/libksba \
			net/curl \
			devel/pth

.if ${FLAVOR:L:Mldap}
CONFIGURE_ARGS +=	--enable-ldap
WANTLIB +=		ldap
LIB_DEPENDS +=		databases/openldap
.else
CONFIGURE_ARGS +=	--disable-ldap
.endif

RUN_DEPENDS = 		security/pinentry

# gpg-agent must be installed to run the regress tests
REGRESS_DEPENDS = 	${FULLPKGNAME}:${BUILD_PKGPATH}

USE_GMAKE = 		Yes
USE_GROFF =		Yes

CONFIGURE_STYLE = 	gnu
CONFIGURE_ENV = 	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS = 	docdir=${LOCALBASE}/share/doc/gnupg2 \
			--enable-gpgtar

# XXX GNU-Pth/libpthread segfault woes:
# http://marc.info/?l=openbsd-ports&m=132197024628355
CONFIGURE_ARGS +=	--disable-scdaemon

# Avoid conflict with gnupg-1.x
post-install:
	@mv ${PREFIX}/man/man1/gpg-zip.1 ${PREFIX}/man/man1/gpg2-zip.1

.include <bsd.port.mk>
