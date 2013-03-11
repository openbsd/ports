# $OpenBSD: Makefile,v 1.4 2013/03/11 11:41:28 espie Exp $

COMMENT=	SSL port scanner

DISTNAME=	sslscan-1.8.2
REVISION=	1
EXTRACT_SUFX=	.tgz

CATEGORIES=	security net

HOMEPAGE=	http://sourceforge.net/projects/sslscan/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto ssl

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=sslscan/}

MAKE_FLAGS=	CC="${CC}"
NO_TEST=	Yes

.include <bsd.port.mk>
