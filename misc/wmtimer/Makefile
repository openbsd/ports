# $OpenBSD: Makefile,v 1.5 2001/03/09 14:28:50 wilfried Exp $

DISTNAME=		wmtimer-2.2
CATEGORIES=		misc x11 x11/windowmaker
NEED_VERSION=		1.340

HOMEPAGE=		http://www.dwave.net/~jking/wmtimer/

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}

LIB_DEPENDS=		gtk.1::x11/gtk+

USE_X11=		Yes

FLAVORS=		gold
FLAVOR?=

WRKSRC=			${WRKDIST}/wmtimer

do-configure:
.if ${FLAVOR:L:Mgold}
	@cd ${WRKSRC} && \
		ln -sf wmtimer-gold.xpm wmtimer.xpm
.else
	@cd ${WRKSRC} && \
		ln -sf wmtimer-default.xpm wmtimer.xpm
.endif

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/wmtimer ${PREFIX}/bin

.include <bsd.port.mk>
