# $OpenBSD: Makefile,v 1.11 2001/08/21 20:44:00 jakob Exp $

COMMENT=	"transparent www proxy driver for IPFILTER"

BROKEN=		"requires ipf"

DISTNAME=	transproxy-1.4
CATEGORIES=	www net
NEED_VERSION=	1.402

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
