# $OpenBSD: Makefile,v 1.3 1999/11/24 03:33:55 brad Exp $

DISTNAME=	pgp50i-unix-src
PKGNAME=	pgp-5.0i
CATEGORIES=	security
MASTER_SITES=	ftp://ftp.no.pgpi.com/pub/pgp/5.0/unix/ \
		ftp://ftp.at.pgpi.com/pub/pgpi/5.0/unix/ \
		ftp://ftp.cz.pgpi.com/pub/pgpi/5.0/unix/ \
		ftp://ftp.dk.pgpi.com/pub/pgpi/5.0/unix/ \
		ftp://ftp.fi.pgpi.com/pub/pgpi/5.0/unix/ \
		ftp://ftp.de.pgpi.com/pub/pgpi/5.0/unix/ \
		ftp://ftp.jp.pgpi.com/pub/pgpi/5.0/unix/ \
		ftp://ftp.kr.pgpi.com/pub/security/pgp/5.0/unix/ \
		ftp://ftp.nl.pgpi.com/pub/pgp/5.0/unix/ \
		ftp://ftp.pl.pgpi.com/pub/pgpi/5.0/unix/ \
		ftp://ftp.ru.pgpi.com/pub/pgp/5.0/unix/ \
		ftp://ftp.es.pgpi.com/pub/pgp/5.0/unix/ \
		ftp://ftp.se.pgpi.com/pub/pgp/5.0/unix/ \
		ftp://ftp.ch.pgpi.com/pub/pgp/5.0/unix/

MASTER_SITES0=	http://the.wiretapped.net/security/cryptography/libs/rsa/ \
		ftp://idea.dsi.unimi.it/pub/security/crypt/math/ \
		ftp://ftp.it.net.au/mirrors/crypto/misc/

NO_CDROM=	"CRYPTO: Third party crypto not allowed."
RESTRICTED=	"Crypto; export-controlled"
MIRROR_DISTFILE=no

NEED_VERSION=	1.121

MAINTAINER=	fgsch@openbsd.org

.if defined(NO_WARNINGS) || (defined(USA_RESIDENT) && ${USA_RESIDENT:U} == YES)
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} rsaref2.tar.gz:0
.endif

GNU_CONFIGURE=	yes

NO_PACKAGE=	yes
WRKSRC=		${WRKDIR}/pgp50i/src

pre-fetch:
.if !defined(NO_WARNINGS)
.if !defined(USA_RESIDENT) || ${USA_RESIDENT:U} != YES && ${USA_RESIDENT:U} != NO
	@${ECHO} ""
	@${ECHO} The variable USA_RESIDENT must be set to either YES or NO
	@${ECHO} in order to build this package.  USA residents that are
	@${ECHO} not licensees of the RSA algorithm MUST set this variable
	@${ECHO} to YES.  Users outside the USA MUST set this variable to
	@${ECHO} NO.  Licensees may choose -- NO is faster.
	@${ECHO} ""
	@${ECHO} RSAREF2 will be automatically obtained and used to generate
	@${ECHO} this program when given the command \"make USA_RESIDENT=YES\"
	@${FALSE}
.endif
.endif

pre-patch:
.if defined(USA_RESIDENT) && ${USA_RESIDENT:U} == YES
	@${MKDIR} ${PATCHDIR}
	@${CP} ${FILESDIR}/patch-rsaref2 ${PATCHDIR}
	@${LN} -sf ${WRKDIR}/rsaref2 ${WRKDIR}/pgp50i/rsaref
.endif

post-patch:
	@${MV} ${WRKSRC}/man/pgp.1 ${WRKSRC}/man/pgp5.1
.if defined(USA_RESIDENT) && ${USA_RESIDENT:U} == YES
	@${RM} ${PATCHDIR}/patch-rsaref2
.endif

.if defined(USA_RESIDENT) && ${USA_RESIDENT:U} == YES
pre-configure:
	@(cd ${WRKDIR}/rsaref2/install/unix && \
	  ${SETENV} ${MAKE_ENV} ${MAKE} -f makefile rsaref.a)
	@${MV} ${WRKSRC}/lib/pgp/pubkey/pgpRSAGlue1.c \
	       ${WRKSRC}/lib/pgp/pubkey/pgpRSAGlue1.c-
.endif

pre-install:
	@${MKDIR} ${PREFIX}/lib/pgp5
	@${INSTALL_DATA} ${WRKSRC}/language50.txt ${PREFIX}/lib/pgp5

.include <bsd.port.mk>
