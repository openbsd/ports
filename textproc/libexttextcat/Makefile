# $OpenBSD: Makefile,v 1.3 2021/11/15 00:29:04 sthen Exp $

COMMENT=	UTF-8 aware language guessing library

GH_ACCOUNT=	LibreOffice
GH_PROJECT=	libexttextcat
#GH_TAGNAME=	v3.4.5

# not tagged yet
GH_COMMIT=	cf73ba2ed9ab4d49800fe9bb4fa41a16687d6e39
DISTNAME=	libexttextcat-3.4.6

SHARED_LIBS +=  exttextcat-2.0            0.0 # 0.0

CATEGORIES=	textproc

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += c

CONFIGURE_STYLE= autoreconf
AUTOCONF_VERSION= 2.69
AUTOMAKE_VERSION= 1.16
AUTORECONF=	${WRKSRC}/autogen.sh

USE_GMAKE=	Yes

post-build:
	cd ${WRKSRC}/src; ${MAKE_PROGRAM} testtextcat

post-install:
	mv ${PREFIX}/bin/createfp{,x} # avoid conflict with libtextcat
	${INSTALL_PROGRAM} ${WRKSRC}/src/.libs/testtextcat ${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/libexttextcat
	mv ${PREFIX}/share/libexttextcat/fpdb.conf{,.dist}
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libexttextcat
	${INSTALL_DATA} ${WRKSRC}/README* ${PREFIX}/share/doc/libexttextcat

.include <bsd.port.mk>
