# OpenBSD makefile for:	jpeg
# Version required:     6b
# Date created:		December 2, 1997
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.4 1998/05/06 02:48:16 marc Exp $
#

DISTNAME=		jpegsrc.v6b
PKGNAME=		jpeg-6b
CATEGORIES=		graphics
MASTER_SITES=		ftp://ftp.uu.net/graphics/jpeg/

MAINTAINER=		angelos@openbsd.org
WRKSRC=			${WRKDIR}/jpeg-6b
GNU_CONFIGURE=	yes
.if (${MACHINE_ARCH} != "alpha")
CONFIGURE_ARGS+=	--enable-shared
.endif
CONFIGURE_ARGS+=	--enable-static

post-install:
	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
