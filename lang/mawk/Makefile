# $OpenBSD: Makefile,v 1.29 2016/04/12 11:41:02 sthen Exp $

COMMENT=	fast POSIX-compliant awk

DISTNAME=	mawk-1.3.4-20150503
PKGNAME=	mawk-1.3.4.20150503
CATEGORIES=	lang
MASTER_SITES=	http://invisible-mirror.net/archives/mawk/ \
		ftp://invisible-island.net/mawk/
EXTRACT_SUFX=	.tgz

HOMEPAGE=	http://invisible-island.net/mawk/

MAINTAINER=	Jeremie Courreges-Anglas <jca@wxcvbn.org>

# GPLv2 only
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c m

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
