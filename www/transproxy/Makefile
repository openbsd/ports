# $OpenBSD: Makefile,v 1.22 2011/03/03 14:27:56 ajacoutot Exp $

COMMENT=	transparent www proxy driver for pf

DISTNAME=	transproxy-1.4
CATEGORIES=	www net

REVISION=	0

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
