# $OpenBSD: Makefile,v 1.10 2000/02/12 08:02:11 turan Exp $

DISTNAME=	pilot-link.0.9.3
PKGNAME=	pilot-link-0.9.3
CATEGORIES=	comms

MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

MASTER_SITES=	ftp://ryeham.ee.ryerson.ca/pub/PalmOS/

LIB_DEPENDS=	tk80:${PORTSDIR}/x11/tk80

GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--with-perl5=/usr/bin/perl \
		--with-readline21=no \
		--with-readline20=no

.include <bsd.port.mk>
