# $OpenBSD: Makefile,v 1.1.1.1 2008/01/26 10:35:55 steven Exp $

PKG_ARCH=	*

COMMENT=	n-up, concatenate, or rotate PDF files

V=		1.20
DISTNAME=	pdfjam_${V}
PKGNAME=	pdfjam-${V}
CATEGORIES=	print

HOMEPAGE=	http://www.warwick.ac.uk/go/pdfjam

MAINTAINER=	Andreas Bihlmaier <andreas.bihlmaier@gmx.de>

# GPL v2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.warwick.ac.uk/go/pdfjam/
EXTRACT_SUFX=	.tgz

WRKDIST=	${WRKDIR}/pdfjam

RUN_DEPENDS=	::print/texlive/base

NO_BUILD=	Yes
NO_REGRESS=	Yes

do-install:
.for p in pdf90 pdfjoin pdfnup
	${INSTALL_PROGRAM} ${WRKSRC}/scripts/$p ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/man1/$p.1 /${PREFIX}/man/man1
.endfor

.include <bsd.port.mk>
