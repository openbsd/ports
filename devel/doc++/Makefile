# $OpenBSD: Makefile,v 1.24 2015/01/21 06:13:46 bentley Exp $

COMMENT=	documentation system for C, C++, IDL and Java

DISTNAME=	doc++-3.4.10
REVISION=	5
CATEGORIES=	devel

HOMEPAGE=	http://docpp.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c m stdc++

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=docpp/}

RUN_DEPENDS=	print/ghostscript/gnu \
		print/texlive/base

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

MODULES=	devel/gettext

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/doc++
	${INSTALL_DATA} ${WRKSRC}/doc/manual/html/* ${PREFIX}/share/doc/doc++
	${INSTALL_DATA_DIR} ${PREFIX}/share/texmf-local/tex/latex/doc++
	${INSTALL_DATA} ${WRKSRC}/doc/*.sty \
		${PREFIX}/share/texmf-local/tex/latex/doc++

.include <bsd.port.mk>
