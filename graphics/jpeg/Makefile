# OpenBSD makefile for:	jpeg
# Version required:     6b
# Date created:		December 2, 1997
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.5 1999/02/18 02:37:30 marc Exp $
#

DISTNAME=		jpegsrc.v6b
PKGNAME=		jpeg-6b
CATEGORIES=		graphics
MASTER_SITES=		ftp://ftp.uu.net/graphics/jpeg/

MAINTAINER=		angelos@openbsd.org
WRKSRC=			${WRKDIR}/jpeg-6b
GNU_CONFIGURE=	yes
.if !defined(NO_SHARED_LIBS)
CONFIGURE_ARGS+=	--enable-shared
.endif
CONFIGURE_ARGS+=	--enable-static

post-install:
	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
