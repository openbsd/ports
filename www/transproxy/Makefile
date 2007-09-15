# $OpenBSD: Makefile,v 1.20 2007/09/15 20:38:26 merdely Exp $

COMMENT=	transparent www proxy driver for pf

DISTNAME=	transproxy-1.4
CATEGORIES=	www net

MASTER_SITES=   ${MASTER_SITE_SOURCEFORGE:=transproxy/}
HOMEPAGE=       http://transproxy.sourceforge.net/

EXTRACT_SUFX=	.tgz

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c wrap

NO_REGRESS=	Yes

FAKE_FLAGS=	PREFIX=${WRKINST}${PREFIX}

.include <bsd.port.mk>
