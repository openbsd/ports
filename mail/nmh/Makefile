# $OpenBSD: Makefile,v 1.11 2000/04/09 17:36:58 espie Exp $

DISTNAME=		nmh-1.0.3
CATEGORIES=     	mail
FAKE=No

MAINTAINER=		ports@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

MASTER_SITES= 		ftp://ftp.math.gatech.edu/pub/nmh/

SYSCONFDIR=		${PREFIX}/lib/nmh
GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--libdir=${PREFIX}/libexec \
			--sysconfdir=${SYSCONFDIR}

.include <bsd.port.mk>
