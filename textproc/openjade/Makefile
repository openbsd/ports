# $OpenBSD: Makefile,v 1.5 2001/01/15 17:49:19 brad Exp $

DISTNAME=	openjade-1.3
CATEGORIES=	textproc
NEED_VERSION=	1.338
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= openjade

HOMEPAGE=	http://openjade.sourceforge.net/

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_FLAGS=	RANLIB="${RANLIB}" CFLAGS="${CFLAGS}" CC="${CC}" \
		XDEFINES='-DJADE_MIF -DJADE_HTML -DSGML_CATALOG_FILES_DEFAULT=\"${PREFIX}/share/sgml/catalog\"'
FAKE_FLAGS=	prefix="${WRKINST}${PREFIX}" INSTALL="${INSTALL_PROGRAM}"

USE_GMAKE=	Yes

DOCDIR=		${PREFIX}/share/doc/openjade
SGMLDIR=	${PREFIX}/share/sgml/openjade
SGMLFILES= 	fot.dtd catalog dsssl.dtd style-sheet.dtd builtins.dsl \
		demo.sgm demo.dsl
	
pre-build:      
	@echo ""
	@echo "*** WARNING: you may see an error such as"
	@echo "***       virtual memory exhausted"
	@echo "*** when building this package.  If you do you must increase"
	@echo "*** your limits.  See the man page for your shell and look"
	@echo "*** for the 'limit' or 'ulimit' command."
	@echo ""

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}/sp
	${INSTALL_DATA_DIR} ${DOCDIR}/images
	${INSTALL_DATA} ${WRKSRC}/jadedoc/copying.txt ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/*.htm ${DOCDIR}/sp
	${INSTALL_DATA} ${WRKSRC}/jadedoc/*.htm ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/jadedoc/images/*.gif ${DOCDIR}/images
	${INSTALL_DATA_DIR} ${SGMLDIR}
.for i in ${SGMLFILES}
	${INSTALL_DATA}	${WRKSRC}/dsssl/$i ${SGMLDIR}
.endfor

.include <bsd.port.mk>
