# OpenBSD makefile for:	enscript
# Version required:	1.6.1
# Date created:		1998-Jul-21
# Whom:			marc@OpenBSD.ORG
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/07/22 02:58:28 marc Exp $
#

DISTNAME=		enscript-1.6.1
CATEGORIES=     	print

MAINTAINER=		marc@openbsd.org

MASTER_SITES=		${MASTER_SITE_GNU}

GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--sysconfdir=${PREFIX}/lib
CONFIGURE_ARGS+=	--with-media=Letter

.include <bsd.port.mk>
