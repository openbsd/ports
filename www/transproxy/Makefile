# $OpenBSD: Makefile,v 1.18 2004/06/19 21:23:42 jakob Exp $

COMMENT=	"transparent www proxy driver for pf"

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

NO_REGRESS=	Yes

FAKE_FLAGS=	PREFIX=${WRKINST}${PREFIX}

.include <bsd.port.mk>
