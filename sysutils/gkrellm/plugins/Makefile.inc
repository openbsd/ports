# $OpenBSD: Makefile.inc,v 1.5 2004/08/11 21:35:37 sturm Exp $

MAINTAINER?=		Peter Hessler <spambox@theapt.org>

# GPL
PERMIT_PACKAGE_CDROM?=	Yes
PERMIT_PACKAGE_FTP?=	Yes
PERMIT_DISTFILES_CDROM?=Yes
PERMIT_DISTFILES_FTP?=	Yes

BUILD_DEPENDS+=	:gkrellm->=2.2.0:sysutils/gkrellm/gkrellm,-client \
		:pkgconfig-*:devel/pkgconfig
RUN_DEPENDS+=	:gkrellm->=2.2.0:sysutils/gkrellm/gkrellm,-client

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}
NO_REGRESS=	Yes
USE_GMAKE=	Yes

PLUGINDIR=	${PREFIX}/lib/gkrellm2/plugins

do-install:
	${INSTALL_DATA_DIR} ${PLUGINDIR}
	${INSTALL_DATA} ${PLUGIN} ${PLUGINDIR}

