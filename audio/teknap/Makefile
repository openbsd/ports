# $OpenBSD: Makefile,v 1.4 2000/11/18 15:30:50 jasoni Exp $

VERSION=	1.2
DISTNAME=	TekNap-${VERSION}
PKGNAME=	teknap-${VERSION}
CATEGORIES=	audio
NEED_VERSION=	1.305
MASTER_SITES=	ftp://ftp.teknap.com/pub/TekNap/

HOMEPAGE=	http://www.TekNap.com/

MAINTAINER=	Jason Ish <jasoni@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

CONFIGURE_STYLE=	gnu dest

WRKDIST=	${WRKDIR}/TekNap

post-install:
	@ln -s TekNap-${VERSION} ${PREFIX}/bin/teknap

.include <bsd.port.mk>
