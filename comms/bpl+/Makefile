# $OpenBSD: Makefile,v 1.8 2000/10/22 15:41:35 espie Exp $

DISTNAME=	bpl+
PKGNAME=	bpl+-1.0
CATEGORIES=	comms

MAINTAINER=	ports@openbsd.org
BROKEN="Tmpnam() warning is a genuine problem"

PERMIT_PACKAGE_CDROM=	"no license"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no license"
PERMIT_DISTFILES_FTP=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bpl ${PREFIX}/bin
	@ln -fs bpl ${PREFIX}/bin/bp

.include <bsd.port.mk>
