# $OpenBSD: Makefile,v 1.21 2015/06/29 15:39:44 sthen Exp $

# requires nvram(4) device
ONLY_FOR_ARCHS=	amd64 i386

COMMENT=	utility to use ibm thinkpad(tm) special keys

DISTNAME=	tpb-0.6.4
REVISION=	4
CATEGORIES=	sysutils

HOMEPAGE=	http://www.nongnu.org/tpb/
MASTER_SITES=	${MASTER_SITE_SAVANNAH:=tpb/}

MAINTAINER=	joshua stein <jcs@openbsd.org>

# gpl
PERMIT_PACKAGE_CDROM=	yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-xosd-config=${LOCALBASE}/bin/xosd-config

MODULES=	devel/gettext
LIB_DEPENDS=	x11/xosd
WANTLIB=	ICE SM X11 Xext Xinerama c ossaudio pthread xosd>=4

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/tpb
	@${INSTALL_DATA} ${WRKDIST}/doc/tpbrc ${PREFIX}/share/examples/tpb/
	@${INSTALL_DATA} ${WRKDIST}/doc/callback_example.sh \
		${PREFIX}/share/examples/tpb/
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tpb
	@${INSTALL_DATA} ${WRKDIST}/doc/nvram.txt ${PREFIX}/share/doc/tpb/

.include <bsd.port.mk>
