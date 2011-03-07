# $OpenBSD: Makefile,v 1.23 2011/03/07 07:25:40 ajacoutot Exp $

COMMENT=	transparent www proxy driver for pf

DISTNAME=	transproxy-1.6
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
