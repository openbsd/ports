# $OpenBSD: Makefile,v 1.24 2010/07/11 15:57:47 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	interface to lzo compression library

DISTNAME=	perl-lzo-1.08
PKGNAME=	p5-Compress-LZO-1.08
CATEGORIES=	archivers perl5
MASTER_SITES=	http://www.oberhumer.com/opensource/lzo/download/

HOMEPAGE=	http://www.oberhumer.com/opensource/lzo/

LIB_DEPENDS=	lzo.>=1::archivers/lzo

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

REVISION = 	2
CONFIGURE_STYLE= perl

WRKDIST=	${WRKDIR}/Compress-LZO-1.08

pre-configure:
	@perl -pi -e "s,!!LOCALBASE!!,${LOCALBASE},g" ${WRKSRC}/Makefile.PL

.include <bsd.port.mk>
