# OpenBSD makefile for:	nmh
# Version required:	0.24
# Date created:		1998-Apr-28
# Whom:			marc@OpenBSD.ORG
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/04/30 04:24:30 marc Exp $
#

# What port/package will be created
#
DISTNAME=		nmh-0.24
CATEGORIES=     	mail

# where to send bitches about this port
#
MAINTAINER=		ports@openbsd.org

# where the source files and patches can be fetched
#
MASTER_SITES=		ftp://ftp.math.gatech.edu/pub/nmh/

# build/configuration variables
#
GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--libdir=${PREFIX}/libexec \
			--sysconfdir=${PREFIX}/lib/nmh

.include <bsd.port.mk>
