# $OpenBSD: Makefile,v 1.6 2000/06/01 04:20:00 marc Exp $

DISTNAME=		sslUSA-2.7b
PKGNAME=		ssl-2.7-USA
CATEGORIES=     	security

MAINTAINER=		marc@openbsd.org

PERMIT_PACKAGE_CDROM=	Only valid in USA
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Patent issues
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ftp.snafu.org/pub/
DISTFILES=		${DISTNAME}${EXTRACT_SUFX}

MASTER_SITES0=		ftp://ftp.zedz.net/pub/crypto/libraries/rsa/ \
		http://the.wiretapped.net/security/cryptography/libs/rsa/
DISTFILES+=		rsaref20.1996.tar.Z:0

WRKDIST=		${WRKDIR}/sslUSA

MAKE_ENV=		PORTSDIR=${PORTSDIR}

FAKE=			Yes

pre-build:
.if !exists(/usr/src/lib/libssl/Makefile.bsd-wrapper)
	@echo ""
	@echo "+--------------------"
	@echo "| You must have the system source files installed to"
	@echo "| create ${PKGNAME}.   You may want to install the"
	@echo "| pre-compiled package.  See ssl(8) for details."
	@echo "+--------------------"
	@echo ""
	@false
.endif

.include <bsd.port.mk>
