# $OpenBSD: Makefile,v 1.5 2001/04/13 03:24:22 obecian Exp $

COMMENT=	"console napster client"
VERSION=	1.2
DISTNAME=	TekNap-${VERSION}
PKGNAME=	teknap-${VERSION}
CATEGORIES=	audio
NEED_VERSION=	1.364
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
