# $OpenBSD: Makefile,v 1.15 2000/04/22 12:12:07 turan Exp $

DISTNAME=	pgp50i-unix-src
PKGNAME=	pgp-5.0i
CATEGORIES=	security
NEED_VERSION=	 1.230
FAKE=No
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

MAINTAINER=	fgsch@openbsd.org

PERMIT_PACKAGE_CDROM=	"no commercial use"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no commercial use"
PERMIT_DISTFILES_FTP=	Yes

FLAVORS=	usa intl

.if defined(FLAVOR)
.if ${FLAVOR} == "usa"
USA_RESIDENT=	yes
.elif ${FLAVOR} == "intl"
USA_RESIDENT=	no
.endif
.endif

USE_AUTOCONF=	Yes
CONFIGURE_ENV=	LOCALBASE="${LOCALBASE}"

.if defined(USA_RESIDENT) && ${USA_RESIDENT:U} == YES
LIB_DEPENDS=	rsaref.2::security/rsaref
CONFIGURE_ARGS=	--with-rsaref
.endif

WRKDIST=	${WRKDIR}/pgp50i/src

pre-fetch:
.if !defined(NO_WARNINGS)
.if !defined(USA_RESIDENT) || ${USA_RESIDENT:U} != YES && ${USA_RESIDENT:U} != NO
	@echo ""
	@echo "The variable USA_RESIDENT must be set to either YES or NO"
	@echo "in order to build this package.  USA residents that are"
	@echo "not licensees of the RSA algorithm MUST set this variable"
	@echo "to YES.  Users outside the USA MUST set this variable to"
	@echo "NO.  Licensees may choose -- NO is faster."
	@echo ""
	@echo "RSAREF2 will be automatically obtained and used to generate"
	@echo "this program when given the command \"make USA_RESIDENT=YES\""
	@false
.endif
.endif

post-patch:
	@mv ${WRKSRC}/man/pgp.1 ${WRKSRC}/man/pgp5.1

pre-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/pgp5
	${INSTALL_DATA} ${WRKSRC}/language50.txt ${PREFIX}/lib/pgp5

.include <bsd.port.mk>
