# $OpenBSD: Makefile,v 1.2 2001/04/13 03:24:25 obecian Exp $

COMMENT=	"premier dockable radio tuner"

ONLY_FOR_ARCHS=		i386

DISTNAME=	wmtune-1.1c
CATEGORIES=	audio x11 x11/windowmaker
NEED_VERSION=	1.364

HOMEPAGE=	http://soren.org/linux/wmtune/

MAINTAINER=	Vladimir Popov <pva48@mail.ru>	

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}dl/

USE_X11=		Yes

FLAVORS=		aztech zoltrix radiotrack
FLAVOR?=		aztech

.if ${FLAVOR:L} == "aztech"
CFLAGS+=		-DAZTECH
.elif ${FLAVOR:L} == "zoltrix"
CFLAGS+=		-DZOLTRIX
.elif ${FLAVOR:L} == "radiotrack"
CFLAGS+=		-DRADIOTRACK
.else
.BEGIN:
	@echo "Conflicting flavor: ${FLAVOR}"
	@exit 1
.endif

WRKDIST=		${WRKDIR}/wmtune-1.0.1-combined/

BINMODE=		4555

post-extract:
	@cp files/wmtune.1 ${WRKDIST}

.include <bsd.port.mk>
