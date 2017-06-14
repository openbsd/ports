# $OpenBSD: Makefile,v 1.40 2017/06/14 01:41:58 schwarze Exp $

COMMENT=	Pretty Good Privacy 5.0i (world wide use)

DISTNAME=	pgp50i-unix-src
PKGNAME=	pgp-5.0i
REVISION =	1
CATEGORIES=	security
MASTER_SITES=	ftp://ftp.no.pgpi.com/pub/pgp/5.0/unix/ \
		ftp://ftp.cz.pgpi.com/pub/pgp/5.0/unix/ \
		ftp://ftp.nl.pgpi.com/pub/pgp/5.0/unix/ \
		ftp://ftp.pl.pgpi.com/pub/pgpi/5.0/unix/ \
		ftp://ftp.ru.pgpi.com/pub/pgp/5.0/unix/ \
		ftp://ftp.ch.pgpi.com/pub/pgp/5.0/unix/ \
		ftp://ftp.hu.pgpi.com/pub/pgpi/5.0/unix/

HOMEPAGE=	http://www.pgpi.com

PERMIT_PACKAGE_CDROM=	no commercial use
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=		c m

CONFIGURE_STYLE= gnu
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/config

WRKDIST=	${WRKDIR}/pgp50i/src

post-patch:
	@mv ${WRKSRC}/man/pgp.1 ${WRKSRC}/man/pgp5.1

post-install:
	@strip ${PREFIX}/bin/pgp5
	@strip ${PREFIX}/bin/pgpk
	${INSTALL_DATA_DIR} ${PREFIX}/lib/pgp5
	${INSTALL_DATA} ${WRKSRC}/language50.txt ${PREFIX}/lib/pgp5

.include <bsd.port.mk>
