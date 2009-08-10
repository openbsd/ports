# $OpenBSD: Makefile,v 1.14 2009/08/10 06:34:30 kili Exp $

# requires nvram(4) device
ONLY_FOR_ARCHS=	amd64 i386

COMMENT=	utility to use ibm thinkpad(tm) special keys

DISTNAME=	tpb-0.6.4
PKGNAME=	${DISTNAME}p3
CATEGORIES=	sysutils

HOMEPAGE=	http://www.nongnu.org/tpb/
MASTER_SITES=	${MASTER_SITE_SAVANNAH:=tpb/}

MAINTAINER=	joshua stein <jcs@openbsd.org>

# gpl
PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-xosd-config=${LOCALBASE}/bin/xosd-config

USE_X11=	yes
MODULES=	devel/gettext
LIB_DEPENDS=	xosd.>=4::x11/xosd
WANTLIB=	ICE SM X11 Xext Xinerama Xt c ossaudio pthread pthread-stubs xcb

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/tpb
	@${INSTALL_DATA} ${WRKDIST}/doc/tpbrc ${PREFIX}/share/examples/tpb/
	@${INSTALL_DATA} ${WRKDIST}/doc/callback_example.sh \
		${PREFIX}/share/examples/tpb/
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tpb
	@${INSTALL_DATA} ${WRKDIST}/doc/nvram.txt ${PREFIX}/share/doc/tpb/

.include <bsd.port.mk>
