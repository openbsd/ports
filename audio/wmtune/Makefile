# $OpenBSD: Makefile,v 1.6 2002/07/17 21:19:12 lebel Exp $

COMMENT=	"premier dockable radio tuner"

DISTNAME=	wmtune-1.1c
CATEGORIES=	audio x11 x11/windowmaker
NEED_VERSION=	1.500

HOMEPAGE=	http://soren.org/linux/wmtune/

MAINTAINER=	Vladimir Popov <pva48@mail.ru>	

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}dl/

MAKE_ENV=		CC="${CC}"
USE_X11=		Yes

FLAVORS=		zoltrix
FLAVOR?=

.if ${FLAVOR:L} == "zoltrix"
CFLAGS+=		-DZOLTRIX
BINMODE=		4555
ONLY_FOR_ARCHS=		i386
.endif

WRKDIST=		${WRKDIR}/wmtune-1.0.1-combined/

post-extract:
	@cp files/wmtune.1 ${WRKDIST}

.include <bsd.port.mk>
