# $OpenBSD: Makefile,v 1.15 2000/03/11 02:54:18 espie Exp $

DISTNAME=	gnupg-1.0.1
CATEGORIES=	security
NEED_VERSION=	1.226
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
DISTFILES=	${DISTNAME}.tar.gz gpg.1.gz
EXTRACT_ONLY=	${DISTNAME}.tar.gz

MAINTAINER=	markus@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# For now, because OpenBSD make seems to have a weird bug in suffix handling
USE_GMAKE=	Yes
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--disable-nls
FAKE=		Yes

GNUPGDOCDIR=	${PREFIX}/share/doc/gnupg
GNUPGDOCFILES=	README AUTHORS COPYING THANKS TODO BUGS \
		doc/DETAILS doc/FAQ doc/OpenPGP doc/HACKING

post-extract:
	@gunzip -c ${FULLDISTDIR}/gpg.1.gz > ${WRKSRC}/doc/gpg.1

post-install:
	@mkdir -p ${GNUPGDOCDIR}
	@set -e; for f in ${GNUPGDOCFILES}; do \
	 ${INSTALL_DATA} ${WRKSRC}/$${f} ${GNUPGDOCDIR}; \
	done

.include <bsd.port.mk>
