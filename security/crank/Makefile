# $OpenBSD: Makefile,v 1.9 2002/10/28 17:35:01 naddy Exp $

COMMENT=	"classical (pen-and-paper) cipher cryptanalysis toolkit"

DISTNAME=		crank-0.1.4
CATEGORIES=		security

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=crank/}

HOMEPAGE=		http://crank.sourceforge.net/

LIB_DEPENDS=		gtk.1.2,gdk.1.2::x11/gtk+

MAINTAINER=		Mark Grimes <mark@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu
USE_GMAKE=		Yes
NO_REGRESS=		Yes

DOC=	BUGS HISTORY LICENSE README ciphertext.txt ciphertext2.txt

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/crank ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/crank
	${INSTALL_DATA_DIR} ${PREFIX}/share/crank/data
	${INSTALL_DATA_DIR} ${PREFIX}/lib/crank
	${INSTALL_DATA_DIR} ${PREFIX}/lib/crank/plugins
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/crank
	${INSTALL_DATA} ${WRKSRC}/data/*.dat ${PREFIX}/share/crank/data
	${INSTALL_DATA} ${WRKSRC}/plugin-src/*.so ${PREFIX}/lib/crank/plugins
.for file in ${DOC}
	@ ${INSTALL_DATA} ${WRKSRC}/${file} ${PREFIX}/share/doc/crank
.endfor

.include <bsd.port.mk>
