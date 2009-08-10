# $OpenBSD: Makefile,v 1.4 2009/08/10 06:31:45 kili Exp $

COMMENT=	ab initio MOLecular DENsity display program

V=		4.6
DISTNAME=	molden${V}
PKGNAME=	molden-${V}p2
CATEGORIES=	biology graphics

HOMEPAGE=	http://www.cmbi.ru.nl/molden/molden.html

MAINTAINER=	Chris Kuethe <ckuethe@openbsd.org>
BROKEN=Author keeps patching and rolling the tarball without bumping version

# Free for private, non-profit use. Commercial license required otherwise
PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	No
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	No

MASTER_SITES=	ftp://ftp.cmbi.ru.nl/pub/molgraph/molden/

WANTLIB=	GL GLU X11 Xmu c g2c m pthread-stubs xcb

USE_GMAKE=	Yes
USE_X11=	Yes
NO_REGRESS=	Yes
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
