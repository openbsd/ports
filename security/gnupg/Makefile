# $OpenBSD: Makefile,v 1.29 2001/05/23 15:28:49 jakob Exp $

COMMENT=	'GNU privacy guard - a free PGP replacement'

DISTNAME=	gnupg-1.0.5
PKGNAME=	${DISTNAME}
CATEGORIES=	security
NEED_VERSION=	1.363
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
MASTER_SITES0=	ftp://ftp.gnupg.org/pub/gcrypt/contrib/ 
DISTFILES=	${DISTNAME}${EXTRACT_SUFX}
EXTRACT_ONLY=	${DISTNAME}${EXTRACT_SUFX}

HOMEPAGE=	http://www.gnupg.org/

MAINTAINER=	Markus Friedl <markus@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-included-gettext

FLAVORS=	idea
FLAVOR?=

.if ${FLAVOR:L} == "idea"
PERMIT_PACKAGE_CDROM=	"a patented algorithm"
PERMIT_PACKAGE_FTP=	"a patented algorithm"
PERMIT_DISTFILES_CDROM=	"a patented algorithm"
PERMIT_DISTFILES_FTP=	"a patented algorithm"
# NB: idea.c is found in ${MASTER_SITES0}
DISTFILES+=	idea.c:0
PATCH_LIST=	patch-*
PATCH_LIST+=	${FILESDIR}/patch-cipher_Makefile_am 
PATCH_LIST+=	${FILESDIR}/patch-cipher_Makefile_in
pre-patch:
	@cp ${DISTDIR}/idea.c ${WRKSRC}/cipher
.endif

GNUPGDOCFILES=	README AUTHORS COPYING THANKS TODO BUGS \
		doc/DETAILS doc/FAQ doc/OpenPGP doc/HACKING doc/faq.html

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gnupg
	cd ${WRKSRC}; ${INSTALL_DATA} ${GNUPGDOCFILES} \
		${PREFIX}/share/doc/gnupg

.include <bsd.port.mk>
