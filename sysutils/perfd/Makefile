# $OpenBSD: Makefile,v 1.7 2007/07/19 13:06:40 ajacoutot Exp $

IGNORE=		"- similar functionality is included in apmd as of ${OPSYS} 3.9"

# we use "macppc" and not "powerpc" on purpose here ; i.e. apm(4) needed
ONLY_FOR_ARCHS=	i386 macppc sparc zaurus

COMMENT=	utility to adjust cpu performance relative to usage
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
