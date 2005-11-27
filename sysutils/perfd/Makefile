# $OpenBSD: Makefile,v 1.6 2005/11/27 15:09:01 sturm Exp $

IGNORE=		"- similar functionality is included in apmd as of ${OPSYS} 3.9"

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
