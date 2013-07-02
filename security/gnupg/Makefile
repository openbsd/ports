# $OpenBSD: Makefile,v 1.87 2013/07/02 08:09:43 espie Exp $

COMMENT=	GNU privacy guard - a free PGP replacement

DISTNAME=	gnupg-1.4.13
CATEGORIES=	security
REVISION =	0

# restrict, not compatible with gnupg-2.
PKGSPEC =	gnupg-<2

MASTER_SITES=	ftp://gd.tuwien.ac.at/privacy/gnupg/gnupg/ \
		ftp://mirrors.dotsrc.org/gcrypt/gnupg/ \
		ftp://ftp.linux.it/pub/mirrors/gnupg/gnupg/ \
		ftp://ftp.ring.gr.jp/pub/net/gnupg/ \
		ftp://ftp.gnupg.org/gcrypt/gnupg/

HOMEPAGE=	http://www.gnupg.org/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MODULES= devel/gettext
LIB_DEPENDS=	archivers/bzip2 \
		net/curl
WANTLIB=	c z readline termcap ssl crypto idn bz2>=10 curl>=3

# XXX give it a chance on vax
LIB_DEPENDS += devel/idn

CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.69
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/scripts
CONFIGURE_ARGS+= --disable-gnupg-iconv
USE_GROFF =	Yes
.if ${MACHINE_ARCH} == "m68k"
CONFIGURE_ARGS+= --disable-asm
.endif
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
MAKE_FLAGS=	LIBINTL="-L${LOCALBASE}/lib -lintl -liconv" \
		LIBICONV="-L${LOCALBASE}/lib -liconv"

FLAVORS=	card ldap
FLAVOR?=

.if ${FLAVOR:Mcard}
LIB_DEPENDS+=		devel/libusb-compat
WANTLIB +=		usb pthread
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

.if ${MACHINE_ARCH} == "hppa"
pre-configure:
	# mpi/hppa1.1/udiv-qrnnd.S is not PIE-safe
	mv ${WRKSRC}/mpi/hppa/udiv-qrnnd.S ${WRKSRC}/mpi/hppa1.1/
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gnupg
	cd ${WRKSRC}; ${INSTALL_DATA} ${GNUPGDOCFILES} \
		${PREFIX}/share/doc/gnupg

do-test:
	@cd ${WRKSRC}/checks && ${MAKE_PROGRAM} check

.include <bsd.port.mk>
