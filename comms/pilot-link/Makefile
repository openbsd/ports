# $OpenBSD: Makefile,v 1.5 1999/04/01 06:20:03 brad Exp $

DISTNAME=	pilot-link.0.9.0
PKGNAME=	pilot-link-0.9.0
CATEGORIES=	comms

MAINTAINER=	angelos@openbsd.org

MASTER_SITES=	ftp://ryeham.ee.ryerson.ca/pub/PalmOS/

LIB_DEPENDS=	tk80:${PORTSDIR}/x11/tk80

GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--with-perl5=/usr/bin/perl \
		--with-readline21=no \
		--with-readline20=no

.include <bsd.port.mk>
