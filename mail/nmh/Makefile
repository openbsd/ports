# OpenBSD makefile for:	nmh
# Version required:	0.27
# Date created:		1998-Apr-28
# Whom:			marc@OpenBSD.ORG
#
# $OpenBSD: Makefile,v 1.3 1998/07/26 05:17:09 marc Exp $
#

# What port/package will be created
#
DISTNAME=		nmh-0.27
CATEGORIES=     	mail

# where to send bitches about this port
#
MAINTAINER=		marc@openbsd.org

# where the source files and patches can be fetched
#
MASTER_SITES=		ftp://ftp.math.gatech.edu/pub/nmh/

# build/configuration variables
#
GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--libdir=${PREFIX}/libexec \
			--sysconfdir=${PREFIX}/lib/nmh

.include <bsd.port.mk>
