# $OpenBSD: Makefile,v 1.12 2001/05/09 19:26:10 danh Exp $

COMMENT=	"interface to lzo compression library"

DISTNAME=	perl-lzo-1.00
PKGNAME=	p5-Compress-LZO-1.00
CATEGORIES=	archivers perl5
NEED_VERSION=	1.408
MASTER_SITES=	http://wildsau.idv.uni-linz.ac.at/mfx/lzo-download/

HOMEPAGE=	http://wildsau.idv.uni-linz.ac.at/mfx/lzo.html

LIB_DEPENDS=	lzo.1::archivers/lzo

MAINTAINER=	Dan Harnett <danh@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

WRKDIST=	${WRKDIR}/Compress-LZO-1.00

.include <bsd.port.mk>
