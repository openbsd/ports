# $OpenBSD: Makefile,v 1.1.1.1 2001/09/15 08:41:00 jcs Exp $

DISTNAME=	reminder-0.2.5
PKGNAME=	gkrellm-${DISTNAME}
CATEGORIES=	misc
NEED_VERSION=	1.454

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

COMMENT=	"gkrellm plugin to display reminders for important events"
HOMEPAGE=	http://www.engr.orst.edu/~simonsen/reminder/
MASTER_SITES=	${HOMEPAGE}

MAINTAINER=	Joshua Stein <jcs@rt.fm>

USE_X11=	Yes

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

BUILD_DEPENDS=	${LOCALBASE}/include/gkrellm/gkrellm.h::sysutils/gkrellm
RUN_DEPENDS=	gkrellm::sysutils/gkrellm

do-install:
	@mkdir -p ${PREFIX}/lib/gkrellm/plugins
	${INSTALL_PROGRAM} ${WRKSRC}/reminder.so ${PREFIX}/lib/gkrellm/plugins

.include <bsd.port.mk>
