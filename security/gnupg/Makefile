# $OpenBSD: Makefile,v 1.10 1999/11/30 02:54:31 brad Exp $

DISTNAME=	gnupg-1.0.0
CATEGORIES=	security
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

MAINTAINER=	markus@openbsd.org

USE_GMAKE=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--disable-nls
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

GNUPGDOCDIR=	${PREFIX}/share/doc/gnupg
GNUPGDOCFILES=	README AUTHORS COPYING THANKS TODO BUGS \
		doc/DETAILS doc/FAQ doc/OpenPGP doc/HACKING

post-install:
	@mkdir -p ${GNUPGDOCDIR}
	@mkdir -p ${GNUPGDOCDIR}/html
	@set -e; for f in ${GNUPGDOCFILES}; do \
	 ${INSTALL_DATA} ${WRKSRC}/$${f} ${GNUPGDOCDIR}; \
	done
	@cp ${WRKSRC}/doc/gph/manual/* ${GNUPGDOCDIR}/html

.include <bsd.port.mk>
