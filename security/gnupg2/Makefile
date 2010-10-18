# $OpenBSD: Makefile,v 1.5 2010/10/18 21:41:45 espie Exp $

COMMENT = 	gnu privacy guard - a free PGP replacement

DISTNAME = 	gnupg-2.0.16
CATEGORIES = 	security

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

# GPLv3
PERMIT_PACKAGE_CDROM = 	Yes
PERMIT_PACKAGE_FTP = 	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP = 	Yes

EXTRACT_SUFX = 		.tar.bz2

MODULES = 		devel/gettext

WANTLIB = 		c crypto z readline ssl termcap gpg-error idn

FLAVORS = 		ldap
FLAVOR ?=
USE_GROFF =	Yes

.if ${FLAVOR:L:Mldap}
CONFIGURE_ARGS+=	--enable-ldap
LIB_DEPENDS+=		ldap.>=8::databases/openldap
.else
CONFIGURE_ARGS+=	--disable-ldap
.endif

LIB_DEPENDS = 		usb::devel/libusb \
			bz2::archivers/bzip2 \
			assuan::security/libassuan \
			gcrypt::security/libgcrypt \
			ksba.::security/libksba \
			curl.>=6::net/curl \
			pth.::devel/pth

RUN_DEPENDS = 		::security/pinentry

# gpg-agent must be installed to run the regress tests
REGRESS_DEPENDS = 	${PKGNAME}::${BUILD_PKGPATH}

USE_GMAKE = 		Yes

CONFIGURE_STYLE = 	gnu
CONFIGURE_ENV = 	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" 
CONFIGURE_ARGS = 	docdir=${LOCALBASE}/share/doc/gnupg2

# Avoid conflit with gnupg-1.x
post-install:
	@mv ${PREFIX}/man/man1/gpg-zip.1 ${PREFIX}/man/man1/gpg2-zip.1

.include <bsd.port.mk>
