# OpenBSD makefile for:	jpeg
# Version required:     6a
# Date created:		December 2, 1997
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.2 1998/02/07 06:39:12 don Exp $
#

DISTNAME=       jpegsrc.v6a
PKGNAME=        jpeg-6a
CATEGORIES=     graphics
MASTER_SITES=   ftp://ftp.uu.net/graphics/jpeg/

MAINTAINER=     angelos@openbsd.org
WRKSRC=         ${WRKDIR}/jpeg-6a
GNU_CONFIGURE=	yes
INSTALL_TARGET= install install-lib
MAN1=		cjpeg.1 djpeg.1 jpegtran.1 rdjpgcom.1 wrjpgcom.1

post-install:
.if (${MACHINE_ARCH} != "alpha")
.if (${MACHINE_ARCH} == "mips")
	${LDCONFIG} -n ${PREFIX}/lib
.else
	${LDCONFIG} -m ${PREFIX}/lib
.endif
.endif

.include <bsd.port.mk>
