# $OpenBSD: Makefile,v 1.8 2000/10/05 21:48:09 jakob Exp $

DISTNAME=	transproxy-1.3
CATEGORIES=	www net
MASTER_SITES=	ftp://ftp.nlc.net.au/pub/unix/transproxy/
EXTRACT_SUFX=	.tgz

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

HOMEPAGE=	http://www.transproxy.nlc.net.au/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE_FLAGS+=	PREFIX=${WRKINST}${PREFIX}

.include <bsd.port.mk>
