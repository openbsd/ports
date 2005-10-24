# $OpenBSD: Makefile,v 1.11 2005/10/24 05:09:59 fgsch Exp $

COMMENT=	"packet filter statistics visualization"

DISTNAME=	pfstat-1.7
PKGNAME=	${DISTNAME}p1
CATEGORIES=	net
MASTER_SITES=	http://www.benzedrine.cx/

HOMEPAGE=	http://www.benzedrine.cx/pfstat.html

MAINTAINER=	Daniel Hartmeier <dhartmei@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c jpeg m png z 

MODULES=	converters/libiconv

LIB_DEPENDS=	gd.18::graphics/gd

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/pfstat ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/pfstat.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
