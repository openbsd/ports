# $OpenBSD: Makefile,v 1.4 2000/04/12 04:16:43 marc Exp $

DISTNAME=		sslUSA-2.7a
PKGNAME=		ssl-2.7-USA
CATEGORIES=     	security

MAINTAINER=		ports@openbsd.org

PERMIT_PACKAGE_CDROM=	Only valid in USA
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Patent issues
PERMIT_DISTFILES_FTP=	Patent issues

MASTER_SITES=		ftp://ftp.snafu.org/pub/
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

# Clean up the rsaref sources, too.
#
pre-clean:
	@cd ${PORTSDIR}/security/rsaref && \
	 OBJMACHINE= WRKOBJDIR= unset OBJMACHINE WRKOBJDIR && make clean

.include <bsd.port.mk>
