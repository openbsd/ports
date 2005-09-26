# $OpenBSD: Makefile,v 1.3 2005/09/26 21:48:46 jolan Exp $

ONLY_FOR_ARCHS=	i386 macppc sparc zaurus

COMMENT=	"utility to adjust cpu performance relative to usage"
CATEGORIES=	sysutils

DISTNAME=	perfd-0.2
HOMEPAGE=	http://tratt.net/laurie/obsd/perfd/
MASTER_SITES=	${HOMEPAGE}releases/

MAINTAINER=	joshua stein <jcs@jcs.org>

# bsd
PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes

WANTLIB=	c m

NO_REGRESS=	yes

.include <bsd.port.mk>
