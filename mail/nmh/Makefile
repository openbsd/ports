# $OpenBSD: Makefile,v 1.8 2000/03/01 10:08:07 turan Exp $

DISTNAME=		nmh-1.0
CATEGORIES=     	mail

MAINTAINER=		ports@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

MASTER_SITES=		ftp://ftp.math.gatech.edu/pub/nmh/

SYSCONFDIR=		${PREFIX}/lib/nmh
GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--libdir=${PREFIX}/libexec \
			--sysconfdir=${SYSCONFDIR}

.include <bsd.port.mk>
