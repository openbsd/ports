# $OpenBSD: Makefile,v 1.7 2005/08/17 16:10:03 espie Exp $

COMMENT=	"opendivx decoding API"

DISTNAME=	libdivxdecore-0.4.7
PKGNAME=	${DISTNAME}p0
CATEGORIES=	graphics devel

MASTER_SITE_OPENBSD=    Yes

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
