# $OpenBSD: Makefile,v 1.11 2013/10/10 02:08:23 brad Exp $

COMMENT=	ab initio MOLecular DENsity display program

V=		4.6
DISTNAME=	molden${V}
PKGNAME=	molden-${V}
REVISION=	4
CATEGORIES=	biology graphics

HOMEPAGE=	http://www.cmbi.ru.nl/molden/molden.html

BROKEN=Author keeps patching and rolling the tarball without bumping version
# prevent mirroring from even trying to fetch until it's fixed
DISTFILES=

# Free for private, non-profit use. Commercial license required otherwise
PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	No
PERMIT_DISTFILES_FTP=	No

MASTER_SITES=	ftp://ftp.cmbi.ru.nl/pub/molgraph/molden/

MODULES=	fortran
MODFORTRAN_COMPILER = g77

WANTLIB=	GL GLU X11 Xmu c m pthread-stubs xcb ${MODFORTRAN_WANTLIB}

BUILD_DEPENDS=	${MODFORTRAN_BUILD_DEPENDS}
LIB_DEPENDS=	${MODFORTRAN_LIB_DEPENDS}

USE_GMAKE=	Yes
NO_TEST=	Yes
MAKE_FILE=	makefile

do-install:
	@${INSTALL_PROGRAM} ${WRKSRC}/gmolden ${WRKSRC}/molden ${PREFIX}/bin
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/molden
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/molden
	@${INSTALL_DATA} ${WRKSRC}/test/* ${PREFIX}/share/examples/molden
	@${INSTALL_DATA_DIR} ${WRKSRC}/doc/* ${PREFIX}/share/doc/molden
	@gunzip -o ${PREFIX}/share/doc/molden/manual.txt \
		${WRKSRC}/doc/manual.txt.Z
	@gunzip -o ${PREFIX}/share/doc/molden/figures.ps \
		${WRKSRC}/doc/figures.ps.Z
.for F in COMMERCIAL_LICENSE CopyRight HISTORY README REGISTER
		@${INSTALL_DATA} ${WRKSRC}/${F} ${PREFIX}/share/doc/molden
.endfor

.include <bsd.port.mk>
