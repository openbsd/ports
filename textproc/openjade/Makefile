# $OpenBSD: Makefile,v 1.12 2002/10/16 01:33:58 naddy Exp $

COMMENT=	"object-oriented SGML/XML parser toolkit and DSSSL engine"

DISTNAME=	openjade-1.3
CATEGORIES=	textproc
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=openjade/}

HOMEPAGE=	http://openjade.sourceforge.net/

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_FLAGS=	RANLIB="${RANLIB}" CFLAGS="${CFLAGS}" CC="${CC}" CXX="${CXX} -fno-implicit-templates ${CXXFLAGS}" \
		XDEFINES='-DJADE_MIF -DJADE_HTML -DSGML_CATALOG_FILES_DEFAULT=\"${PREFIX}/share/sgml/catalog\"'
FAKE_FLAGS=	prefix="${WRKINST}${PREFIX}" INSTALL="${INSTALL_PROGRAM}"

USE_GMAKE=	Yes

DOCDIR=		${PREFIX}/share/doc/openjade
SGMLDIR=	${PREFIX}/share/sgml/openjade
SGMLFILES= 	fot.dtd catalog dsssl.dtd style-sheet.dtd builtins.dsl \
		demo.sgm demo.dsl
	
VMEM_WARNING=	Yes
NO_REGRESS=	Yes

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

.include <bsd.port.mk>
