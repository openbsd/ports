# $OpenBSD: Makefile,v 1.5 2000/03/14 00:24:55 turan Exp $

DISTNAME=	bpl+
PKGNAME=	bpl+-1.0
CATEGORIES=	comms

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	"no license"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no license"
PERMIT_DISTFILES_FTP=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bpl ${PREFIX}/bin
	@ln -fs ${PREFIX}/bin/bpl ${PREFIX}/bin/bp

.include <bsd.port.mk>
