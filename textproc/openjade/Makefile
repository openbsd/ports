COMMENT=	object-oriented DSSSL engine

DISTNAME=	openjade-1.3.3-pre1
PKGNAME=	openjade-1.3.3pre1
REVISION=	9

CATEGORIES=	textproc

SHARED_LIBS +=  ogrove               0.0      # 0.1
SHARED_LIBS +=  ospgrove             0.0      # 0.1
SHARED_LIBS +=  ostyle               0.0      # 0.1

HOMEPAGE=	http://openjade.sourceforge.net/

# BSD
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=openjade/}

WANTLIB += c iconv intl m pthread ${COMPILER_LIBCXX} osp

COMPILER=		base-clang ports-gcc base-gcc

.if ${MACHINE_ARCH:Msparc64}
# -O[12] make openjade segfault in textproc/docbook-utils 0.6.14 build
CXXFLAGS +=		-O0
.endif

LIB_DEPENDS=		textproc/opensp

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--datadir=${PREFIX}/share/sgml/openjade

USE_GMAKE=		Yes
NO_TEST=		Yes

INSTALL_TARGET=		install install-man

DOCDIR=		${PREFIX}/share/doc/openjade
SGMLDIR=	${PREFIX}/share/sgml/openjade
SGMLFILES= 	fot.dtd catalog dsssl.dtd style-sheet.dtd builtins.dsl \
		demo.sgm demo.dsl

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}/{images,sp} ${SGMLDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/*.htm ${DOCDIR}/sp
	${INSTALL_DATA} ${WRKSRC}/jadedoc/copying.txt ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/jadedoc/*.htm ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/jadedoc/images/*.gif ${DOCDIR}/images
.for i in ${SGMLFILES}
	${INSTALL_DATA} ${WRKSRC}/dsssl/$i ${SGMLDIR}
.endfor
	cd ${PREFIX}/bin && ln -sf openjade jade
	cd ${PREFIX}/man/man1 && ln -sf openjade.1 jade.1

.include <bsd.port.mk>
