# $OpenBSD: Makefile,v 1.1.1.1 2000/02/09 08:21:36 kevlo Exp $

PKGNAME=	eterm-0.8.10
DISTNAME=	Eterm-0.8.10
CATEGORIES=	x11
MASTER_SITES=	ftp://eterm.sourceforge.net/pub/eterm/ \
		ftp://ftp.eterm.org/pub/Eterm/ \
		http://eterm.is.nontoxic.org/download/ \

MAINTAINER=	halogen@nol.net

LIB_DEPENDS=	Imlib.19:${PORTSDIR}/graphics/imlib

GNU_CONFIGURE=	yes
USE_GMAKE=	yes
USE_LIBTOOL=	yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/Eterm
	${INSTALL_DATA} ${WRKSRC}/ReleaseNotes ${PREFIX}/share/doc/Eterm
	${INSTALL_DATA} ${WRKSRC}/doc/Eterm.tcap ${PREFIX}/share/doc/Eterm
	${INSTALL_DATA} ${WRKSRC}/doc/Eterm.ti ${PREFIX}/share/doc/Eterm

.include <bsd.port.mk>
