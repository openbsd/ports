# $OpenBSD: Makefile,v 1.17 2016/02/09 12:00:16 sthen Exp $

ONLY_FOR_ARCHS=	${APM_ARCHS}

COMMENT=	simple system monitor bar

DISTNAME=	xstatbar-0.5
REVISION=	8

CATEGORIES=	sysutils x11

HOMEPAGE=	http://www.ryanflannery.net/hacking/xstatbar/

# ISC
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xau Xdmcp Xext Xrender c m

MASTER_SITES=	${HOMEPAGE}files/
EXTRACT_SUFX=	.tgz

ALL_TARGET=	# empty
NO_TEST=	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile

.include <bsd.port.mk>
