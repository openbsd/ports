# imported from FreeBSD on 28 jul 98
# New ports collection makefile for:	jless
# Version required:	332
# Date created:		7 March 1995
# Whom:			Nobuhiro Yasutomi <nobu@psrc.isac.co.jp>
#
# $FreeBSD: Makefile,v 1.13 1998/07/17 20:36:13 steve Exp $
# $OpenBSD: Makefile,v 1.10 2000/06/11 01:53:48 espie Exp $
#

DISTNAME=	less-332
PKGNAME=	ja-less-3.32p2.48
CATEGORIES=	japanese
NEED_VERSION=	1.300
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= less
HOMEPAGE=	http://www.pobox.com/~jam/less/

MASTER_SITES0=	ftp://ftp.big.or.jp/pub/usr2/jam/less/
PATCHFILES=	less-332-iso242.patch.gz:0 \
		less-332-iso242-243.patch.gz:0 \
		less-332-iso243-244.patch.gz:0 \
		less-332-iso244-245.patch.gz:0 \
		less-332-iso245-247.patch.gz:0 \
		less-332-iso247-248.patch.gz:0

PATCH_DIST_STRIP=	-p1

MAINTAINER=espie@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu dest
MAN1=		jless.1 jlesskey.1

.include <bsd.port.mk>
