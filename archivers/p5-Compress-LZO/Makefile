# $OpenBSD: Makefile,v 1.16 2003/05/24 02:55:16 jolan Exp $

COMMENT=	"interface to lzo compression library"

DISTNAME=	perl-lzo-1.08
PKGNAME=	p5-Compress-LZO-1.08
CATEGORIES=	archivers perl5
MASTER_SITES=	http://www.oberhumer.com/opensource/lzo/download/

HOMEPAGE=	http://www.oberhumer.com/opensource/lzo/

LIB_DEPENDS=	lzo.1::archivers/lzo

MAINTAINER=	Dan Harnett <danh@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

WRKDIST=	${WRKDIR}/Compress-LZO-1.08

.include <bsd.port.mk>
