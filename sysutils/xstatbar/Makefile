# $OpenBSD: Makefile,v 1.4 2010/05/12 17:20:22 ajacoutot Exp $

ONLY_FOR_ARCHS=	${APM_ARCHS}

COMMENT=	simple system monitor bar

DISTNAME=	xstatbar-0.4

CATEGORIES=	sysutils x11

HOMEPAGE=	http://www.ryanflannery.net/hacking/xstatbar/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# ISC
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xau Xdmcp Xext Xrender c m

MASTER_SITES=	${HOMEPAGE}files/
EXTRACT_SUFX=	.tgz

ALL_TARGET=	# empty

NO_REGRESS=	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile

.include <bsd.port.mk>
