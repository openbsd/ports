# $OpenBSD: Makefile,v 1.16 2003/04/01 22:11:12 jakob Exp $

COMMENT=	"transparent www proxy driver for pf"

DISTNAME=	transproxy-1.4
CATEGORIES=	www net

MASTER_SITES=	http://www.transproxy.nlc.net.au/
EXTRACT_SUFX=	.tgz

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

HOMEPAGE=	http://www.transproxy.nlc.net.au/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_REGRESS=	Yes

FAKE_FLAGS=	PREFIX=${WRKINST}${PREFIX}

.include <bsd.port.mk>
