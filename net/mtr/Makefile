# $OpenBSD: Makefile,v 1.5 2000/01/24 15:29:44 itojun Exp $

DISTNAME=	mtr-0.41
CATEGORIES=	net

MAINTAINER=     jakob@openbsd.org

MASTER_SITES=	ftp://ftp.bitwizard.nl/mtr/ \
		ftp://ftp.lysator.liu.se/mirror/unix/mtr/

PATCHFILES=	mtr-041-v6-19990903b.diff.gz
PATCH_SITES=	ftp://ftp.kame.net/pub/kame/misc/
PATCH_DIST_STRIP=	-p1

GNU_CONFIGURE=	yes
CONFIGURE_ARGS+=	--enable-ipv6

.include <bsd.port.mk>
