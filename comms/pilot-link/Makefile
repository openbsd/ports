# $OpenBSD: Makefile,v 1.8 1999/10/30 21:51:56 angelos Exp $

BROKEN=		broken, waiting for turans@ to review

DISTNAME=	pilot-link.0.9.3
PKGNAME=	pilot-link-0.9.3
CATEGORIES=	comms

MAINTAINER=	angelos@openbsd.org

MASTER_SITES=	ftp://ryeham.ee.ryerson.ca/pub/PalmOS/

LIB_DEPENDS=	tk80:${PORTSDIR}/x11/tk80

GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--with-perl5=/usr/bin/perl \
		--with-readline21=no \
		--with-readline20=no

.include <bsd.port.mk>
