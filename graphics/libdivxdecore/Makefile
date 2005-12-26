# $OpenBSD: Makefile,v 1.8 2005/12/26 22:24:58 steven Exp $

COMMENT=	"opendivx decoding API"

DISTNAME=	libdivxdecore-0.4.7
PKGNAME=	${DISTNAME}p1
SHARED_LIBS=		divxdecore	0.0
MODGNU_SHARED_LIBS=	divxdecore	'-module'
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
USE_LIBTOOL=		Yes

.include <bsd.port.mk>
