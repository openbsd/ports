# $OpenBSD: Makefile,v 1.1.1.1 2021/02/08 09:53:58 sthen Exp $

COMMENT=	UTF-8 aware language guessing library

GH_ACCOUNT=	LibreOffice
GH_PROJECT=	libexttextcat
GH_TAGNAME=	v3.4.5

SHARED_LIBS +=  exttextcat-2.0            0.0 # 0.0

CATEGORIES=	textproc

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += c

CONFIGURE_STYLE= autoreconf
AUTOCONF_VERSION= 2.69
AUTOMAKE_VERSION= 1.16
AUTORECONF=	${WRKSRC}/autogen.sh

post-install:
	mv ${PREFIX}/bin/createfp{,x} # avoid conflict with libtextcat
	${INSTALL_DATA_DIR} ${PREFIX}/share/libexttextcat/LM
	${INSTALL_DATA} ${WRKSRC}/langclass/LM/*.lm ${PREFIX}/share/libexttextcat/LM
	${INSTALL_DATA} ${WRKSRC}/langclass/fpdb.conf ${PREFIX}/share/libexttextcat
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libexttextcat
	${INSTALL_DATA} ${WRKSRC}/README* ${PREFIX}/share/doc/libexttextcat

.include <bsd.port.mk>
