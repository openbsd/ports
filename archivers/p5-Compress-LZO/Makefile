# $OpenBSD: Makefile,v 1.7 2000/09/10 23:06:33 angelos Exp $

DISTNAME=	perl-lzo-1.00
PKGNAME=	p5-Compress-LZO-1.00
CATEGORIES=	archivers perl5
NEED_VERSION=	1.310
MASTER_SITES=	http://wildsau.idv.uni-linz.ac.at/mfx/lzo-download/

HOMEPAGE=	http://wildsau.idv.uni-linz.ac.at/mfx/lzo.html

LIB_DEPENDS=	lzo.1::archivers/lzo

MAINTAINER=	danh@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

#SEPARATE_BUILD= 	concurrent
CONFIGURE_STYLE=	perl

WRKDIST=	${WRKDIR}/Compress-LZO-1.00

.include <bsd.port.mk>
