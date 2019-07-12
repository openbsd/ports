# $OpenBSD: Makefile,v 1.21 2019/07/12 20:49:55 sthen Exp $

ONLY_FOR_ARCHS=	${APM_ARCHS}

COMMENT=	simple system monitor bar

DISTNAME=	xstatbar-0.5
REVISION=	10
FIX_EXTRACT_PERMISSIONS=Yes

CATEGORIES=	sysutils x11

HOMEPAGE=	http://www.ryanflannery.net/hacking/xstatbar/

# ISC
PERMIT_PACKAGE=	Yes

WANTLIB += X11 Xau Xdmcp Xext Xrender c m

# bad https redirect
#MASTER_SITES=	http://www.ryanflannery.net/hacking/xstatbar/files/
MASTER_SITES=	https://spacehopper.org/mirrors/

EXTRACT_SUFX=	.tgz

ALL_TARGET=	# empty
NO_TEST=	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile

.include <bsd.port.mk>
