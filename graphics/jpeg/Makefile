# OpenBSD makefile for:	jpeg
# Version required:     6a
# Date created:		December 2, 1997
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.3 1998/02/10 10:45:17 niklas Exp $
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
	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
