# $OpenBSD: Makefile,v 1.14 2002/04/24 17:19:31 danh Exp $

COMMENT=	"interface to lzo compression library"

DISTNAME=	perl-lzo-1.00
PKGNAME=	p5-Compress-LZO-1.00
CATEGORIES=	archivers perl5
NEED_VERSION=	1.515
MASTER_SITES=	http://www.oberhumer.com/opensource/lzo/download/

HOMEPAGE=	http://www.oberhumer.com/opensource/lzo/

LIB_DEPENDS=	lzo.1::archivers/lzo

MAINTAINER=	Dan Harnett <danh@openbsd.org>

# GNU GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

WRKDIST=	${WRKDIR}/Compress-LZO-1.00

.include <bsd.port.mk>
