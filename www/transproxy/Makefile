# $OpenBSD: Makefile,v 1.10 2001/05/06 04:22:58 lebel Exp $

COMMENT=	"transparent www proxy driver for IPFILTER"

DISTNAME=	transproxy-1.4
CATEGORIES=	www net
MASTER_SITES=	ftp://ftp.nlc.net.au/pub/unix/transproxy/
EXTRACT_SUFX=	.tgz
NEED_VERSION=	1.402

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

HOMEPAGE=	http://www.transproxy.nlc.net.au/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE_FLAGS+=	PREFIX=${WRKINST}${PREFIX}

.include <bsd.port.mk>
