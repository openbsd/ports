# $OpenBSD: Makefile,v 1.19 2000/06/29 22:25:47 fgsch Exp $

DISTNAME=	pgp50i-unix-src
PKGNAME=	pgp-5.0i
CATEGORIES=	security
NEED_VERSION=	1.308
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

# No default flavor, error.
FLAVOR?=
.if empty(FLAVOR)
.BEGIN:
	@echo ""
	@echo "The variable USA_RESIDENT must be set to either Yes or No"
	@echo "in order to build this package.  USA residents that are"
	@echo "not licensees of the RSA algorithm MUST set this variable"
	@echo "to Yes.  Users outside the USA MUST set this variable to"
	@echo "No.  Licensees may choose -- No is faster."
	@echo ""
	@echo "RSAREF2 will be automatically obtained and used to generate"
	@echo "this program when given the command \"make USA_RESIDENT=Yes\""
	@echo ""
	@echo "The new port flavor system also allows you to use "
	@echo "FLAVOR=usa or FLAVOR=intl"
	@false
.endif

CONFIGURE_STYLE=	autoconf
CONFIGURE_ENV=	LOCALBASE="${LOCALBASE}"

.if ${FLAVOR:L} == "usa"
LIB_DEPENDS=	rsaref.2::security/rsaref
CONFIGURE_ARGS=	--with-rsaref
.endif

WRKDIST=	${WRKDIR}/pgp50i/src

post-patch:
	@mv ${WRKSRC}/man/pgp.1 ${WRKSRC}/man/pgp5.1

post-configure:
	@find ${WRKSRC} -name Makefile|xargs perl -pi.bak -e 's,MFLAGS,AM_MAKEFLAGS,'

pre-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/pgp5
	${INSTALL_DATA} ${WRKSRC}/language50.txt ${PREFIX}/lib/pgp5

.include <bsd.port.mk>
