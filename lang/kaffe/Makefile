# OpenBSD makefile for:	kaffe
# Version required:	0.8.4
# Date created:		1998-Sep-2
# Whom:			dugsong@monkey.org
#
# Relevant URLs:	ftp://ftp.kaffe.org/pub/kaffe/

DISTNAME=	kaffe-1.0.b2
CATEGORIES=     lang
DIST_SUBDIR=	${PKGNAME}

MASTER_SITES=	ftp://ftp.transvirtual.com/pub/kaffe/

MAINTAINER=	ports@OpenBSD.ORG

CONFIGURE_ENV=	LDFLAGS="-L/usr/local/lib"
GNU_CONFIGURE=	yes

post-install:
		@${INSTALL_DATA} ${WRKSRC}/FAQ/* ${PREFIX}/share/kaffe

.include <bsd.port.mk>
