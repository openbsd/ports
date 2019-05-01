# $OpenBSD: Makefile,v 1.24 2019/05/01 20:12:51 danj Exp $

# requires nvram(4) device
ONLY_FOR_ARCHS=	amd64 i386

COMMENT=	utility to use ibm thinkpad(tm) special keys

DISTNAME=	tpb-0.6.4
REVISION=	6
CATEGORIES=	sysutils

HOMEPAGE=	http://www.nongnu.org/tpb/
MASTER_SITES=	${MASTER_SITE_SAVANNAH:=tpb/}

# gpl
PERMIT_PACKAGE_CDROM=	yes

WANTLIB=  ICE SM X11 Xext Xinerama c iconv intl ossaudio pthread xosd>=4

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-xosd-config=${LOCALBASE}/bin/xosd-config

BUILD_DEPENDS=	devel/gettext-tools
LIB_DEPENDS=	devel/gettext \
		x11/xosd

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/tpb
	@${INSTALL_DATA} ${WRKDIST}/doc/tpbrc ${PREFIX}/share/examples/tpb/
	@${INSTALL_DATA} ${WRKDIST}/doc/callback_example.sh \
		${PREFIX}/share/examples/tpb/
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tpb
	@${INSTALL_DATA} ${WRKDIST}/doc/nvram.txt ${PREFIX}/share/doc/tpb/

.include <bsd.port.mk>
