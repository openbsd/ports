# $OpenBSD: Makefile,v 1.46 2005/01/05 19:45:26 naddy Exp $

COMMENT=	"GNU privacy guard - a free PGP replacement"

DISTNAME=	gnupg-1.2.2
PKGNAME=	${DISTNAME}p1
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

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c z

MODULES= devel/gettext

CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.52
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/scripts
CONFIGURE_ARGS+= --disable-ldap
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

FLAVORS=	idea
FLAVOR?=

.if ${FLAVOR:L} == "idea"
PERMIT_PACKAGE_CDROM=	"a patented algorithm"
PERMIT_DISTFILES_CDROM=	"a patented algorithm"
DISTFILES=		${DISTNAME}${EXTRACT_SUFX} idea.c.gz:0

post-extract:
	ln -s ${WRKDIR}/idea.c ${WRKSRC}/cipher/idea.c
.else
SUPDISTFILES=	idea.c.gz:0
.endif

GNUPGDOCFILES=	README AUTHORS COPYING THANKS TODO BUGS \
		doc/DETAILS doc/FAQ doc/OpenPGP doc/HACKING doc/faq.html

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gnupg
	cd ${WRKSRC}; ${INSTALL_DATA} ${GNUPGDOCFILES} \
		${PREFIX}/share/doc/gnupg

do-regress:
	@cd ${WRKSRC}/checks && ${MAKE_PROGRAM}

.include <bsd.port.mk>
