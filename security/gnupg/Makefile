COMMENT =	GNU privacy guard - a free PGP replacement

DISTNAME =	gnupg-2.2.30
CATEGORIES =	security
REVISION =	0

MASTER_SITES =	${MASTER_SITE_GNUPG:=gnupg/}

HOMEPAGE =	https://www.gnupg.org/

MAINTAINER =	Edd Barrett <edd@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += assuan bz2 c gcrypt gnutls gpg-error iconv intl ksba
WANTLIB += npth pthread readline sqlite3 usb-1.0 z

EXTRACT_SUFX =		.tar.bz2

FLAVORS =		ldap
FLAVOR ?=

LIB_DEPENDS =		archivers/bzip2 \
			databases/sqlite3 \
			devel/gettext,-runtime \
			devel/libusb1 \
			devel/npth>=1.5 \
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

DEBUG_PACKAGES =	${BUILD_PACKAGES}

RUN_DEPENDS =		security/pinentry

TEST_DEPENDS =		${FULLPKGNAME}:${BUILD_PKGPATH}
PORTHOME =		${WRKDIR}

USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS +=	--enable-gpgtar \
			--enable-wks-tools

# compat symlinks, remove for OpenBSD 7.0?
post-install:
	ln -sf gpg ${PREFIX}/bin/gpg2
	ln -sf gpgv ${PREFIX}/bin/gpgv2
	rm -rf ${PREFIX}/share/doc/gnupg/examples/systemd-user

.include <bsd.port.mk>
