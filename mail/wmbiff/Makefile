# $OpenBSD: Makefile,v 1.14 2006/08/03 13:09:09 espie Exp $

COMMENT=	"wm-dockapp; multiple mailbox checker"
DISTNAME=	wmbiff-0.4.22
CATEGORIES=	mail x11 x11/windowmaker
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=wmbiff/}

HOMEPAGE=	http://wmbiff.sourceforge.net/

MAINTAINER=	Michael Schubert <michael@schubert.cx>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		X11 Xext Xpm c gcrypt gpg-error iconv intl z

USE_X11=	Yes

LIB_DEPENDS=	gnutls.>=12::security/gnutls

CONFIGURE_STYLE=gnu
CONFIGURE_ENV+=	ac_cv_path_CVS2CL=""

pre-configure:
	@perl -pi -e 's,/usr/share/doc/wmbiff/examples/sample.wmbiffrc,\
		${PREFIX}/share/examples/wmbiff/sample.wmbiffrc,g' \
		${WRKSRC}/wmbiff/{wmbiff.1,wmbiffrc.5}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/wmbiff
	${INSTALL_DATA} ${WRKSRC}/wmbiff/sample.wmbiffrc \
		${PREFIX}/share/examples/wmbiff/sample.wmbiffrc

.include <bsd.port.mk>
