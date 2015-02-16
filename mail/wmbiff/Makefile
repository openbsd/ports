# $OpenBSD: Makefile,v 1.26 2015/02/16 22:57:09 naddy Exp $

COMMENT=	multiple mailbox checker dockapp
DISTNAME=	wmbiff-0.4.27
REVISION =	3
CATEGORIES=	mail x11 x11/windowmaker
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=wmbiff/}

HOMEPAGE=	http://wmbiff.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += X11 Xext Xpm c gcrypt gnutls gpg-error pthread z

MODULES=	devel/gettext

LIB_DEPENDS=	security/gnutls \
		security/libgcrypt

CONFIGURE_STYLE=gnu
CONFIGURE_ENV+=	ac_cv_path_CVS2CL=""

pre-configure:
	@perl -pi -e 's,/usr/share/doc/wmbiff/examples/,\
		${PREFIX}/share/examples/wmbiff/,g' \
		${WRKSRC}/wmbiff/{wmbiff.1,wmbiffrc.5.in}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/wmbiff
	${INSTALL_DATA} ${WRKSRC}/wmbiff/sample.wmbiffrc \
		${PREFIX}/share/examples/wmbiff/sample.wmbiffrc

.include <bsd.port.mk>
