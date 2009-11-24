# $OpenBSD: Makefile,v 1.20 2009/11/24 20:23:15 landry Exp $

COMMENT=	object-oriented DSSSL engine

DISTNAME=	openjade-1.3.3-pre1
PKGNAME=	openjade-1.3.3pre1
CATEGORIES=	textproc
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=openjade/}

SHARED_LIBS=	ospgrove 0.0 \
		ogrove 0.0 \
		ostyle 0.0 # 0.1
HOMEPAGE=	http://openjade.sourceforge.net/

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		devel/gettext
LIB_DEPENDS=		osp::textproc/opensp
WANTLIB=		c m pthread stdc++

CONFIGURE_STYLE=	gnu
USE_LIBTOOL=		Yes
USE_GMAKE=		Yes

DOCDIR=		${PREFIX}/share/doc/openjade
SGMLDIR=	${PREFIX}/share/sgml/openjade
SGMLFILES= 	fot.dtd catalog dsssl.dtd style-sheet.dtd builtins.dsl \
		demo.sgm demo.dsl

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}/sp
	${INSTALL_DATA_DIR} ${DOCDIR}/images
	${INSTALL_DATA} ${WRKSRC}/jadedoc/copying.txt ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/*.htm ${DOCDIR}/sp
	${INSTALL_DATA} ${WRKSRC}/jadedoc/*.htm ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/jadedoc/images/*.gif ${DOCDIR}/images
	${INSTALL_DATA_DIR} ${SGMLDIR}
.for i in ${SGMLFILES}
	${INSTALL_DATA} ${WRKSRC}/dsssl/$i ${SGMLDIR}
.endfor
	rm ${PREFIX}/share/builtins.dsl

.include <bsd.port.mk>
