# $OpenBSD: Makefile.inc,v 1.1.1.1 2003/11/03 20:34:16 sturm Exp $

MAINTAINER?=		Peter Hessler <spambox@theapt.org>

# GPL
PERMIT_PACKAGE_CDROM?=	Yes
PERMIT_PACKAGE_FTP?=	Yes
PERMIT_DISTFILES_CDROM?=Yes
PERMIT_DISTFILES_FTP?=	Yes

BUILD_DEPENDS+=	:gkrellm->=2.1.0:sysutils/gkrellm/gkrellm
RUN_DEPENDS+=	:gkrellm->=2.1.0:sysutils/gkrellm/gkrellm

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}
NO_REGRESS=	Yes
USE_GMAKE=	Yes

PLUGINDIR=	${PREFIX}/lib/gkrellm2/plugins

do-install:
	${INSTALL_DATA_DIR} ${PLUGINDIR}
	${INSTALL_DATA} ${PLUGIN} ${PLUGINDIR}

