# $OpenBSD: Makefile,v 1.14 2002/10/25 11:34:24 naddy Exp $

COMMENT=	"B Plus file transfer protocol"

DISTNAME=	bpl+
PKGNAME=	bpl+-1.0
CATEGORIES=	comms

PERMIT_PACKAGE_CDROM=	"no license"
PERMIT_PACKAGE_FTP=	"no license"
PERMIT_DISTFILES_CDROM=	"no license"
PERMIT_DISTFILES_FTP=	"no license"

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bpl ${PREFIX}/bin
	@ln -fs bpl ${PREFIX}/bin/bp

.include <bsd.port.mk>
