# $OpenBSD: Makefile,v 1.21 2010/10/19 08:02:57 espie Exp $

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

USE_GROFF =	Yes
NO_REGRESS=	Yes

FAKE_FLAGS=	PREFIX=${WRKINST}${PREFIX}

.include <bsd.port.mk>
