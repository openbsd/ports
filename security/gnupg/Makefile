# $OpenBSD: Makefile,v 1.35 2002/07/19 19:27:42 fgsch Exp $

COMMENT=	'GNU privacy guard - a free PGP replacement'

DISTNAME=	gnupg-1.0.7
PKGNAME=	${DISTNAME}
CATEGORIES=	security
MASTER_SITES=	ftp://ftp.gnupg.org/pub/gcrypt/gnupg/ \
		ftp://ftp.progsoc.uts.edu.au/pub/gnupg/gnupg/ \
		ftp://openbsd.rug.ac.be/pub/gcrypt/gnupg/ \
		ftp://sunsite.auc.dk/pub/security/gcrypt/gnupg/ \
		ftp://ftp.linux.it/pub/mirrors/gnupg/gnupg/ \
		ftp://pgp.iijlab.net/pub/gnupg/gnupg/ \
		ftp://ring.aist.go.jp/pub/net/gnupg/gnupg/ \
		ftp://sunsite.icm.edu.pl/pub/security/gcrypt/gnupg/ \
		ftp://ftp.stacken.kth.se/pub/crypto/gnupg/gnupg/ \
		ftp://ftp.net.lut.ac.uk/gcrypt/gnupg/ \
		ftp://gd.tuwien.ac.at/privacy/gnupg/gnupg/

MASTER_SITES0=	ftp://ftp.ruhr-uni-bochum.de/mirrors/ftp.gnupg.org/pub/gcrypt/contrib/ \
	ftp://ftp.uni-bielefeld.de/pub/crypto/replay/mirror/ftp.pgp.net/gnupgp/contrib/ \
	ftp://ftp.hacktic.nl/pub/crypto/mirror/ftp.gnupg.org/contrib/ \
	ftp://ftp.fh-schmalkalden.de/pub/dfncert/crypt/gcrypt/contrib/

DISTFILES=	${DISTNAME}${EXTRACT_SUFX}
EXTRACT_ONLY=	${DISTNAME}${EXTRACT_SUFX}

HOMEPAGE=	http://www.gnupg.org/

MAINTAINER=	Reinhard J. Sammer <reinhard@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

.include <bsd.own.mk>

MODULES=	gettext

CONFIGURE_STYLE=	gnu
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC} ${WRKSRC}/scripts

REGRESS_TARGET=	check

FLAVORS=	idea
FLAVOR?=

.if ${FLAVOR:L} == "idea"
PERMIT_PACKAGE_CDROM=	"a patented algorithm"
PERMIT_PACKAGE_FTP=	"a patented algorithm"
PERMIT_DISTFILES_CDROM=	"a patented algorithm"
PERMIT_DISTFILES_FTP=	"a patented algorithm"
# NB: idea.c is found in ${MASTER_SITES0}
DISTFILES+=	idea.c:0
PATCH_LIST=	idea-* patch-*
pre-patch:
	@cp ${DISTDIR}/idea.c ${WRKSRC}/cipher
.endif

GNUPGDOCFILES=	README AUTHORS COPYING THANKS TODO BUGS \
		doc/DETAILS doc/FAQ doc/OpenPGP doc/HACKING doc/faq.html

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gnupg
	cd ${WRKSRC}; ${INSTALL_DATA} ${GNUPGDOCFILES} \
		${PREFIX}/share/doc/gnupg

# XXX workaround gcc bugs on sparc64
.if ${MACHINE_ARCH:Msparc64}
CFLAGS+=-O0
.endif

.include <bsd.port.mk>
