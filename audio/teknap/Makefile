# $OpenBSD: Makefile,v 1.2 2000/10/22 14:02:57 espie Exp $

DISTNAME=	TekNap-1.0
PKGNAME=	teknap-1.0
CATEGORIES=	audio
NEED_VERSION=	1.270
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
	@ln -s TekNap-1.0 ${PREFIX}/bin/teknap

.include <bsd.port.mk>
