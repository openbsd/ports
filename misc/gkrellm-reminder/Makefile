# $OpenBSD: Makefile,v 1.7 2002/06/09 05:36:59 wilfried Exp $

DISTNAME=	reminder-0.3.5
PKGNAME=	gkrellm-${DISTNAME}
CATEGORIES=	misc
NEED_VERSION=	1.503

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

COMMENT=	"gkrellm plugin to display reminders for important events"
HOMEPAGE=	http://www.engr.orst.edu/~simonsen/reminder/
MASTER_SITES=	${HOMEPAGE}

MAINTAINER=	Joshua Stein <jcs@rt.fm>

USE_X11=	Yes
NO_REGRESS=	Yes

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

BUILD_DEPENDS=	:gkrellm-*:sysutils/gkrellm
RUN_DEPENDS=	${BUILD_DEPENDS}

do-install:
	@mkdir -p ${PREFIX}/lib/gkrellm/plugins
	${INSTALL_PROGRAM} ${WRKSRC}/reminder.so ${PREFIX}/lib/gkrellm/plugins

.include <bsd.port.mk>
