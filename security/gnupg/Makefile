# $OpenBSD: Makefile,v 1.7 1999/08/04 22:41:02 brad Exp $

DISTNAME=	gnupg-0.9.10
CATEGORIES=	security
MASTER_SITES=	ftp://ftp.gnupg.org/pub/gcrypt/ \
		ftp://ftp.progsoc.uts.edu.au/pub/gnupg/ \
		ftp://openbsd.rug.ac.be/pub/gcrypt/ \
		ftp://sunsite.auc.dk/pub/security/gcrypt/ \
		ftp://ftp.linux.it/pub/mirrors/gnupg/ \
		ftp://pgp.iijlab.net/pub/gnupg/ \
		ftp://ring.aist.go.jp/pub/net/gnupg/ \
		ftp://sunsite.icm.edu.pl/pub/security/gcrypt/ \
		ftp://ftp.stacken.kth.se/pub/crypto/gnupg/ \
		ftp://ftp.net.lut.ac.uk/gcrypt/

MAINTAINER=	markus.friedl@informatik.uni-erlangen.de

USE_GMAKE=	yes
SEPARATE_BUILD=	concurrent
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--disable-nls
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

GNUPGDOCDIR=	${PREFIX}/share/doc/gnupg
GNUPGDOCFILES=	README AUTHORS COPYING THANKS TODO BUGS \
		doc/DETAILS doc/FAQ doc/OpenPGP doc/HACKING

post-install:
	@${MKDIR} ${GNUPGDOCDIR}
	@set -e; for f in ${GNUPGDOCFILES}; do \
		${INSTALL_DATA} ${WRKSRC}/$${f} ${GNUPGDOCDIR}/; \
	done

.include <bsd.port.mk>
