# $OpenBSD: Makefile.inc,v 1.1 2018/09/18 19:21:05 sthen Exp $

COMMENT=	BIRD internet routing daemon

DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		${DISTNAME:S/-/-doc-/}${EXTRACT_SUFX}

CATEGORIES=	net

HOMEPAGE=	https://bird.network.cz/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	ftp://bird.network.cz/pub/bird/

BUILD_DEPENDS=	devel/m4 \
		devel/bison

USE_GMAKE=	Yes
CONFIGURE_STYLE?= gnu
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/tools

FAKE_FLAGS=	sysconfdir=${TRUEPREFIX}/share/examples/bird

NO_TEST=	Yes
