# OpenBSD makefile for:	vic
# Version required:	2.6
# Date created:		July 14 1999
# Whom:			Angelos D. Keromytis
#
# $Id: Makefile,v 1.2 1999/07/15 16:04:28 angelos Exp $
# $OpenBSD: Makefile,v 1.2 1999/07/15 16:04:28 angelos Exp $
#

DISTNAME=	vic
CATEGORIES=	mbone tk80
MASTER_SITES=	http://www-mice.cs.ucl.ac.uk/multimedia/software/vic/2.8ucl4/
DISTFILES=	vic-2.8ucl4.tar.gz

MAINTAINER=	angelos@openbsd.org

LIB_DEPENDS=	tk80.1:${PORTSDIR}/x11/tk80

USE_AUTOCONF=	yes
USE_X_PREFIX=	yes

post-install:
	strip ${PREFIX}/bin/vic
	strip ${PREFIX}/bin/histtolut

.include <bsd.port.mk>
