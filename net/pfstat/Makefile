# $OpenBSD: Makefile,v 1.2 2002/08/12 11:37:03 dhartmei Exp $

COMMENT=	"packet filter statistics visualization"

DISTNAME=	pfstat-1.1
CATEGORIES=	net
MASTER_SITES=	http://www.benzedrine.cx/

HOMEPAGE=	http://www.benzedrine.cx/pf.html

MAINTAINER=	Daniel Hartmeier <dhartmei@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	gd.18::graphics/gd

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/pfstat ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/pfstat.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
