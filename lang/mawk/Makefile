# $OpenBSD: Makefile,v 1.35 2019/06/22 22:44:06 jca Exp $

COMMENT=	fast POSIX-compliant awk

DISTNAME=	mawk-1.3.4-20171017
PKGNAME=	mawk-1.3.4.20171017
CATEGORIES=	lang
MASTER_SITES=	http://invisible-mirror.net/archives/mawk/ \
		ftp://ftp.invisible-island.net/mawk/
EXTRACT_SUFX=	.tgz

HOMEPAGE=	http://invisible-island.net/mawk/

MAINTAINER=	Jeremie Courreges-Anglas <jca@wxcvbn.org>

# GPLv2 only
PERMIT_PACKAGE=	Yes

WANTLIB=	c m

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
