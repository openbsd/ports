# $OpenBSD: Makefile,v 1.2 2000/04/06 00:40:22 marc Exp $

DISTNAME=		sslUSA-2.6a
PKGNAME=		ssl-2.6-USA
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

# Note: if the obj dir (which points somewhere in /usr/obj/...) is not
# cleaned up it can/will cause problems the next time a make build is done
# in /usr/src
#
pre-clean:
	@rm -rf ${WRKSRC}/libssl/${OBJDIR}/*
	@cd ${PORTSDIR}/security/rsaref && \
	 OBJMACHINE= WRKOBJDIR= unset OBJMACHINE WRKOBJDIR && make clean

.include <bsd.port.mk>
