# $OpenBSD: Makefile,v 1.9 2001/02/26 07:29:21 jakob Exp $

DISTNAME=	transproxy-1.4
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
