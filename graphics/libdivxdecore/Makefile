# $OpenBSD: Makefile,v 1.4 2002/03/28 11:43:42 espie Exp $

COMMENT=	"opendivx decoding API"

DISTNAME=	libdivxdecore-0.4.7
CATEGORIES=	graphics devel
NEED_VERSION=	1.480
MASTER_SITES=	http://download2.projectmayo.com/dnload/divx4linux/xmps/

HOMEPAGE=	http://www.projectmayo.com/projects/detail.php?projectId=4

MAINTAINER=	Federico Schwindt <fgsch@openbsd.org>

# Mayo licence, h263 decoding
PERMIT_PACKAGE_CDROM=	"No commercial use plus patent issue"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"No commercial use plus patent issue"
PERMIT_DISTFILES_FTP=	Yes

PATCH_LIST=	${PORTSDIR}/infrastructure/patches/patch-lt1.3.5-ltconfig \
		${PORTSDIR}/infrastructure/patches/patch-lt1.3.5-ltmain_sh \
		patch-*

SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--enable-static

.include <bsd.port.mk>
