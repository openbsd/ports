# $OpenBSD: Makefile,v 1.1.1.1 2001/01/11 22:45:21 naddy Exp $

DISTNAME=	wmtimer-2.2
CATEGORIES=	misc x11
NEED_VERSION=	1.340
HOMEPAGE=	http://www.dwave.net/~jking/wmtimer/

MAINTAINER=	Peter Stromberg <home@wilfried.net>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}

FLAVORS=	gold
FLAVOR?=

LIB_DEPENDS=	gtk.1.2::x11/gtk+

WRKSRC=		${WRKDIST}/wmtimer

do-configure:
.if ${FLAVOR:L} == "gold"
	@cd ${WRKSRC} && \
		ln -sf wmtimer-gold.xpm wmtimer.xpm
.else
	@cd ${WRKSRC} && \
		ln -sf wmtimer-default.xpm wmtimer.xpm
.endif

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/wmtimer ${PREFIX}/bin

.include <bsd.port.mk>
