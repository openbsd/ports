# OpenBSD makefile for:	vic
# Version required:	2.6
# Date created:		July 14 1999
# Whom:			Angelos D. Keromytis
#
# $Id: Makefile,v 1.1.1.1 1999/07/15 14:02:44 angelos Exp $
# $OpenBSD: Makefile,v 1.1.1.1 1999/07/15 14:02:44 angelos Exp $
#

DISTNAME=	vic-2.8
CATEGORIES=	mbone tk80
MASTER_SITES=	ftp://ftp.ee.lbl.gov/conferencing/vic/
DISTFILES=	vicsrc-2.8.tar.gz

MAINTAINER=	angelos@openbsd.org

LIB_DEPENDS=	tk80.1:${PORTSDIR}/x11/tk80

USE_AUTOCONF=	yes
USE_X_PREFIX=	yes

post-install:
	strip ${PREFIX}/bin/vic
	strip ${PREFIX}/bin/histtolut

.include <bsd.port.mk>
