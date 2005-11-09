# $OpenBSD: Makefile,v 1.5 2005/11/09 19:33:13 xsa Exp $

ONLY_FOR_ARCHS=	i386 macppc sparc zaurus

COMMENT=	"utility to adjust cpu performance relative to usage"
CATEGORIES=	sysutils

DISTNAME=	perfd-0.2
HOMEPAGE=	http://tratt.net/laurie/obsd/perfd/
MASTER_SITES=	${HOMEPAGE}releases/

MAINTAINER=	Chris Kuethe <ckuethe@ualberta.ca>

# bsd
PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes

WANTLIB=	c m

NO_REGRESS=	yes

.include <bsd.port.mk>
