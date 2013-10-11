# $OpenBSD: Makefile,v 1.36 2013/10/11 20:39:19 naddy Exp $

COMMENT=	Motif-based audio mixer
VERSION=	1.2.2
DISTNAME=	xmmix-${VERSION}
REVISION=	5
CATEGORIES=	audio
HOMEPAGE=	http://www.ibiblio.org/tkan/xmmix/

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	ICE SM Xau Xdmcp X11 Xext Xt c m ossaudio Xm

MASTER_SITES=	http://www.ibiblio.org/tkan/download/xmmix/${VERSION}/src/

CONFIGURE_STYLE=	imake
LIB_DEPENDS+=		x11/openmotif
USE_GROFF =		Yes

MAKE_ENV+=MOTIFLIB='-L${LOCALBASE}/lib -lXm'

WRKDIST=	${WRKDIR}/xmmix-1.2
NO_TEST=	Yes

post-install:
	@ perl -pi -e 's,\@PREFIX@,${TRUEPREFIX},;' \
	    ${PREFIX}/lib/X11/app-defaults/XMmix

.include <bsd.port.mk>
