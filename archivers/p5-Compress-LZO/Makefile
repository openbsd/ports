# $OpenBSD: Makefile,v 1.2 2000/07/10 20:28:01 danh Exp $

DISTNAME=	perl-lzo-1.00
PKGNAME=	p5-Cmprs-LZO-1.00
CATEGORIES=     archivers
NEED_VERSION=	1.310
HOMEPAGE=	http://wildsau.idv.uni-linz.ac.at/mfx/lzo.html

MAINTAINER=	danh@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://wildsau.idv.uni-linz.ac.at/mfx/lzo-download/

LIB_DEPENDS=	lzo.1::archivers/lzo

WRKDIST=	${WRKDIR}/Compress-LZO-1.00
INSTALL_TARGET=	install_site

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
