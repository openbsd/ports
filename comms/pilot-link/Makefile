# OpenBSD makefile for: pilot-link
# Version required:     0.8.13
# Date created:         June 25, 1998
# Whom:                 Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/06/26 02:05:00 angelos Exp $

DISTNAME=	pilot-link.0.8.13
PKGNAME=	pilot-link-0.8.13
CATEGORIES=	comms
MASTER_SITES=	ftp://ryeham.ee.ryerson.ca/pub/PalmOS/

MAINTAINER=	angelos@openbsd.org

LIB_DEPENDS=	tk80\\.1:${PORTSDIR}/x11/tk80

USE_PERL5=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--with-perl5=/usr/bin/perl --with-readline21=no --with-readline20=no

MAN1=		dlpsh.1 ietf2datebook.1 install-datebook.1 \
		install-memo.1 install-user.1 pilot-xfer.1 \
		read-ical.1

.include <bsd.port.mk>
