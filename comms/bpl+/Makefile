# $OpenBSD: Makefile,v 1.10 2001/05/05 22:39:36 jakob Exp $

COMMENT=	"B Plus file transfer protocol"

DISTNAME=	bpl+
PKGNAME=	bpl+-1.0
CATEGORIES=	comms
NEED_VERSION=	1.406

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	"no license"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no license"
PERMIT_DISTFILES_FTP=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bpl ${PREFIX}/bin
	@ln -fs bpl ${PREFIX}/bin/bp

.include <bsd.port.mk>
