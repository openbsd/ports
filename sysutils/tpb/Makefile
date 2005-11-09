# $OpenBSD: Makefile,v 1.4 2005/11/09 01:25:38 jcs Exp $

# requires nvram(4) device
ONLY_FOR_ARCHS=	i386

COMMENT=	"utility to use ibm thinkpad(tm) special keys"

DISTNAME=	tpb-0.6.3
PKGNAME=	${DISTNAME}p1
CATEGORIES=	sysutils

HOMEPAGE=	http://www.nongnu.org/tpb/
MASTER_SITES=	http://savannah.nongnu.org/download/tpb/

# gpl
PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-xosd-config=${LOCALBASE}/bin/xosd-config

USE_X11=	yes
MODULES=	gettext
LIB_DEPENDS=	xosd.4::x11/xosd
WANTLIB=	ICE SM X11 Xext Xinerama Xt c ossaudio pthread

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/tpb
	@${INSTALL_DATA} ${WRKDIST}/doc/tpbrc ${PREFIX}/share/examples/tpb/
	@${INSTALL_DATA} ${WRKDIST}/doc/callback_example.sh \
		${PREFIX}/share/examples/tpb/
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tpb
	@${INSTALL_DATA} ${WRKDIST}/doc/nvram.txt ${PREFIX}/share/doc/tpb/

.include <bsd.port.mk>
