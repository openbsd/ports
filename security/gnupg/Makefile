# $OpenBSD: Makefile,v 1.116 2020/04/12 18:29:01 cwen Exp $

COMMENT=	GNU privacy guard - a free PGP replacement

DISTNAME=	gnupg-1.4.23
REVISION=	3
CATEGORIES=	security

# restrict, not compatible with gnupg-2.
PKGSPEC =	gnupg-<2

MASTER_SITES=	${MASTER_SITE_GNUPG:=gnupg/}

HOMEPAGE=	https://www.gnupg.org/

MAINTAINER=	Jeremie Courreges-Anglas <jca@wxcvbn.org>

# GPLv3
PERMIT_PACKAGE=	Yes

WANTLIB += bz2 c crypto curses curl iconv intl nghttp2 readline ssl z

LIB_DEPENDS=	archivers/bzip2 \
		devel/gettext,-runtime \
		net/curl

CONFIGURE_STYLE= gnu
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/scripts
CONFIGURE_ARGS+= --disable-gnupg-iconv
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
MAKE_FLAGS=	LIBINTL="-L${LOCALBASE}/lib -lintl -liconv" \
		LIBICONV="-L${LOCALBASE}/lib -liconv"

FLAVORS=	card ldap
FLAVOR?=

.if ${FLAVOR:Mcard}
LIB_DEPENDS+=		devel/libusb-compat
WANTLIB +=		usb
.else
CONFIGURE_ARGS+=	--disable-card-support --without-libusb
.endif

.if ${FLAVOR:Mldap}
CONFIGURE_ARGS+=	--enable-ldap
LIB_DEPENDS+=		databases/openldap
WANTLIB +=		ldap>=8
.else
CONFIGURE_ARGS+=	--disable-ldap
.endif


GNUPGDOCFILES=	README AUTHORS COPYING THANKS TODO BUGS \
		doc/DETAILS doc/FAQ doc/OpenPGP doc/HACKING

.include <bsd.port.arch.mk>
.if (${MACHINE_ARCH} == "i386" || ${MACHINE_ARCH} == "mips64" || \
     ${MACHINE_ARCH} == "mips64el" || ${MACHINE_ARCH} == "powerpc") \
     && ${PROPERTIES:Mclang}
CFLAGS += -fheinous-gnu-extensions
.endif

.if ${MACHINE_ARCH} == "hppa"
pre-configure:
	# mpi/hppa1.1/udiv-qrnnd.S is not PIE-safe
	mv ${WRKSRC}/mpi/hppa/udiv-qrnnd.S ${WRKSRC}/mpi/hppa1.1/
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gnupg
	cd ${WRKSRC}; ${INSTALL_DATA} ${GNUPGDOCFILES} \
		${PREFIX}/share/doc/gnupg

.include <bsd.port.mk>
