# $OpenBSD: Makefile,v 1.6 2000/04/09 17:36:05 espie Exp $

DISTNAME=	bpl+
PKGNAME=	bpl+-1.0
CATEGORIES=	comms
FAKE=No

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	"no license"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no license"
PERMIT_DISTFILES_FTP=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bpl ${PREFIX}/bin
	@ln -fs ${PREFIX}/bin/bpl ${PREFIX}/bin/bp

.include <bsd.port.mk>
