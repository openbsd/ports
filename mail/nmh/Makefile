# OpenBSD makefile for:	nmh
# Version required:	0.26
# Date created:		1998-Apr-28
# Whom:			marc@OpenBSD.ORG
#
# $OpenBSD: Makefile,v 1.2 1998/05/28 21:53:50 marc Exp $
#

# What port/package will be created
#
DISTNAME=		nmh-0.26
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
