# $OpenBSD: Makefile,v 1.6 2000/02/02 17:02:40 espie Exp $

DISTNAME=	mtr-0.41
CATEGORIES=	net

MAINTAINER=     jakob@openbsd.org

NEED_VERSION=	1.175
MASTER_SITES=	ftp://ftp.bitwizard.nl/mtr/ \
		ftp://ftp.lysator.liu.se/mirror/unix/mtr/

MASTER_SITES0=	ftp://ftp.kame.net/pub/kame/misc/
PATCHFILES=	mtr-041-v6-19990903b.diff.gz:0
PATCH_DIST_STRIP=	-p1

GNU_CONFIGURE=	yes
CONFIGURE_ARGS+=	--enable-ipv6

.include <bsd.port.mk>
