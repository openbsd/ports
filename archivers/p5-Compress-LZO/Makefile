# $OpenBSD: Makefile,v 1.31 2013/03/10 22:28:04 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	interface to lzo compression library

DISTNAME=	perl-lzo-1.08
PKGNAME=	p5-Compress-LZO-1.08
REVISION = 	4
CATEGORIES=	archivers perl5
MASTER_SITES=	http://www.oberhumer.com/opensource/lzo/download/

HOMEPAGE=	http://www.oberhumer.com/opensource/lzo/

LIB_DEPENDS =	archivers/lzo
WANTLIB =	c lzo>=1

# GPL
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE= perl

WRKDIST=	${WRKDIR}/Compress-LZO-1.08

pre-configure:
	@perl -pi -e "s,!!LOCALBASE!!,${LOCALBASE},g" ${WRKSRC}/Makefile.PL

.include <bsd.port.mk>
