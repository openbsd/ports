# $OpenBSD: Makefile,v 1.25 2011/04/14 08:56:39 sthen Exp $

COMMENT=	transparent www proxy driver for pf

DISTNAME=	transproxy-1.6
REVISION=	1
CATEGORIES=	www net

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=transproxy/}
HOMEPAGE=	http://transproxy.sourceforge.net/

EXTRACT_SUFX=	.tgz

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c wrap

USE_GROFF=	Yes
NO_REGRESS=	Yes

FAKE_FLAGS=	PREFIX=${WRKINST}${PREFIX}

.include <bsd.port.mk>
