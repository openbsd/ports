# $OpenBSD: Makefile,v 1.11 2001/10/28 13:05:45 espie Exp $

COMMENT=	"B Plus file transfer protocol"

DISTNAME=	bpl+
PKGNAME=	bpl+-1.0
CATEGORIES=	comms
NEED_VERSION=	1.406

PERMIT_PACKAGE_CDROM=	"no license"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no license"
PERMIT_DISTFILES_FTP=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bpl ${PREFIX}/bin
	@ln -fs bpl ${PREFIX}/bin/bp

.include <bsd.port.mk>
