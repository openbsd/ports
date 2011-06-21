# $OpenBSD: Makefile,v 1.1.1.1 2011/06/21 21:05:48 ajacoutot Exp $

COMMENT=	SSL port scanner

DISTNAME=	sslscan-1.8.2
EXTRACT_SUFX=	.tgz

CATEGORIES=	security net

HOMEPAGE=	http://sourceforge.net/projects/sslscan/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c crypto ssl

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=sslscan/}

MAKE_FLAGS=	CC="${CC}"
NO_REGRESS=	Yes

.include <bsd.port.mk>
