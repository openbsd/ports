# $OpenBSD: Makefile,v 1.37 2019/12/27 22:17:03 jca Exp $

COMMENT=	fast POSIX-compliant awk

DISTNAME=	mawk-1.3.4-20190203
PKGNAME=	mawk-1.3.4.20190203

CATEGORIES=	lang

HOMEPAGE=	http://invisible-island.net/mawk/

MAINTAINER=	Jeremie Courreges-Anglas <jca@wxcvbn.org>

# GPLv2 only
PERMIT_PACKAGE=	Yes

WANTLIB=	c m

MASTER_SITES=	http://invisible-mirror.net/archives/mawk/ \
		ftp://ftp.invisible-island.net/mawk/
EXTRACT_SUFX=	.tgz

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
