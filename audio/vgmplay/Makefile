# $OpenBSD: Makefile,v 1.1.1.1 2018/07/29 03:56:14 bcallah Exp $

COMMENT =	command line audio player for VGM files
CATEGORIES =	audio

GH_ACCOUNT =	vgmrips
GH_PROJECT =	vgmplay
GH_TAGNAME =	0.40.8

HOMEPAGE =	https://vgmrips.net/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2 only
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ao c m pthread z

LIB_DEPENDS =	audio/libao

USE_GMAKE =	Yes
MAKE_FLAGS =	CC="${CC}"

NO_TEST =	Yes

WRKSRC =	${WRKDIST}/VGMPlay

.include <bsd.port.mk>
