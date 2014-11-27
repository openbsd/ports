# $OpenBSD: Makefile,v 1.25 2014/11/27 12:26:49 naddy Exp $

COMMENT=	less + zcat + ISO-2022 - a pager similar to more and pg

DISTNAME=	less-332
PKGNAME=	ja-less-3.32pl2.48
REVISION=	0
CATEGORIES=	japanese
MASTER_SITES=	${MASTER_SITE_GNU:=less/}
HOMEPAGE=	http://www.pobox.com/~jam/less/

MASTER_SITES0=	ftp://ftp.big.or.jp/pub/usr2/jam/less/
PATCHFILES=	less-332-iso242.patch.gz:0 \
		less-332-iso242-243.patch.gz:0 \
		less-332-iso243-244.patch.gz:0 \
		less-332-iso244-245.patch.gz:0 \
		less-332-iso245-247.patch.gz:0 \
		less-332-iso247-248.patch.gz:0

PATCH_DIST_STRIP=	-p1

MAINTAINER=Marc Espie <espie@openbsd.org>

#		BSD
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c ncurses

CONFIGURE_STYLE=	gnu dest

.include <bsd.port.mk>
