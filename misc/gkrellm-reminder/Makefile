# $OpenBSD: Makefile,v 1.5 2001/11/10 15:00:48 espie Exp $

DISTNAME=	reminder-0.3.1
PKGNAME=	gkrellm-${DISTNAME}
CATEGORIES=	misc
NEED_VERSION=	1.463

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

BUILD_DEPENDS=	::sysutils/gkrellm
RUN_DEPENDS=	::sysutils/gkrellm

do-install:
	@mkdir -p ${PREFIX}/lib/gkrellm/plugins
	${INSTALL_PROGRAM} ${WRKSRC}/reminder.so ${PREFIX}/lib/gkrellm/plugins

.include <bsd.port.mk>
