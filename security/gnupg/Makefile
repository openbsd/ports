# $OpenBSD: Makefile,v 1.19 2000/08/12 18:21:45 brad Exp $

DISTNAME=	gnupg-1.0.2
CATEGORIES=	security
NEED_VERSION=	1.310
MASTER_SITES=	ftp://ftp.gnupg.org/pub/gcrypt/gnupg/ \
		ftp://ftp.progsoc.uts.edu.au/pub/gnupg/gnupg/ \
		ftp://openbsd.rug.ac.be/pub/gcrypt/ \
		ftp://sunsite.auc.dk/pub/security/gcrypt/gnupg/ \
		ftp://ftp.linux.it/pub/mirrors/gnupg/gnupg/ \
		ftp://pgp.iijlab.net/pub/gnupg/gnupg/ \
		ftp://ring.aist.go.jp/pub/net/gnupg/gnupg/ \
		ftp://sunsite.icm.edu.pl/pub/security/gcrypt/gnupg/ \
		ftp://ftp.stacken.kth.se/pub/crypto/gnupg/gnupg/ \
		ftp://ftp.net.lut.ac.uk/gcrypt/gnupg/

HOMEPAGE=	http://www.gnupg.org/

MAINTAINER=	markus@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--disable-nls

GNUPGDOCDIR=	${PREFIX}/share/doc/gnupg
GNUPGDOCFILES=	README AUTHORS COPYING THANKS TODO BUGS \
		doc/DETAILS doc/FAQ doc/OpenPGP doc/HACKING

post-install:
	${INSTALL_DATA_DIR} ${GNUPGDOCDIR}
	@set -e; for f in ${GNUPGDOCFILES}; do \
	 ${INSTALL_DATA} ${WRKSRC}/$${f} ${GNUPGDOCDIR}; \
	done

.include <bsd.port.mk>
