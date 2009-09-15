# $OpenBSD: Makefile,v 1.71 2009/09/15 13:44:41 dhill Exp $

COMMENT=	GNU privacy guard - a free PGP replacement

DISTNAME=	gnupg-1.4.10
CATEGORIES=	security

MASTER_SITES=	ftp://ftp.gnupg.org/gcrypt/gnupg/ \
		ftp://gd.tuwien.ac.at/privacy/gnupg/gnupg/ \
		ftp://crypto.yashy.com/pub/cryptography/gnupg/ \
		ftp://ftp.planetmirror.com/pub/gnupg/gnupg/ \
		ftp://sunsite.dk/pub/security/gcrypt/gnupg/ \
		ftp://ftp.linux.it/pub/mirrors/gnupg/gnupg/ \
		ftp://pgp.iijlab.net/pub/pgp/gnupg/ \
		ftp://ring.aist.go.jp/pub/net/gnupg/gnupg/

MASTER_SITES0=	ftp://ftp.gnupg.dk/pub/contrib-dk/

HOMEPAGE=	http://www.gnupg.org/

MAINTAINER=	Reinhard J. Sammer <reinhard@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c z readline termcap ssl crypto idn

MODULES= devel/gettext
LIB_DEPENDS=	bz2.>=10::archivers/bzip2 \
		curl.>=3::net/curl

CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.61
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/scripts
CONFIGURE_ARGS+= --disable-gnupg-iconv
.if ${MACHINE_ARCH} == "m68k"
CONFIGURE_ARGS+= --disable-asm
.endif
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
MAKE_FLAGS=	LIBINTL="-L${LOCALBASE}/lib -lintl -liconv" \
		LIBICONV="-L${LOCALBASE}/lib -liconv"

FLAVORS=	idea card ldap
FLAVOR?=

.if ${FLAVOR:L:Midea}
PERMIT_PACKAGE_CDROM=	a patented algorithm
PERMIT_DISTFILES_CDROM=	a patented algorithm
DISTFILES=		${DISTNAME}${EXTRACT_SUFX} idea.c.gz:0

post-extract:
	ln -s ${WRKDIR}/idea.c ${WRKSRC}/cipher/idea.c
.else
SUPDISTFILES=	idea.c.gz:0
.endif

.if ${FLAVOR:L:Mcard}
LIB_DEPENDS+=		usb::devel/libusb
.else
CONFIGURE_ARGS+=	--disable-card-support --without-libusb
.endif

.if ${FLAVOR:L:Mldap}
CONFIGURE_ARGS+=	--enable-ldap
LIB_DEPENDS+=		ldap.>=8::databases/openldap
.else
CONFIGURE_ARGS+=	--disable-ldap
.endif


GNUPGDOCFILES=	README AUTHORS COPYING THANKS TODO BUGS \
		doc/DETAILS doc/FAQ doc/OpenPGP doc/HACKING doc/faq.html

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gnupg
	cd ${WRKSRC}; ${INSTALL_DATA} ${GNUPGDOCFILES} \
		${PREFIX}/share/doc/gnupg

do-regress:
	@cd ${WRKSRC}/checks && ${MAKE_PROGRAM} check

.include <bsd.port.mk>
