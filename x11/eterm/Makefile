# $OpenBSD: Makefile,v 1.3 2000/03/05 18:30:46 espie Exp $

PKGNAME=	eterm-0.8.10
DISTNAME=	Eterm-0.8.10
CATEGORIES=	x11
NEED_VERSION=	1.223
MASTER_SITES=	ftp://eterm.sourceforge.net/pub/eterm/ \
		ftp://ftp.eterm.org/pub/Eterm/ \
		http://eterm.is.nontoxic.org/download/ \

MAINTAINER=	halogen@nol.net

LICENSE_TYPE=         GPL
PERMIT_PACKAGE_CDROM= Yes
PERMIT_PACKAGE_FTP=   Yes
PERMIT_DISTFILES_CDROM=       Yes
PERMIT_DISTFILES_FTP= Yes

LIB_DEPENDS=	Imlib.19:graphics/imlib

GNU_CONFIGURE=	Yes
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/Eterm
	${INSTALL_DATA} ${WRKSRC}/ReleaseNotes ${PREFIX}/share/doc/Eterm
	${INSTALL_DATA} ${WRKSRC}/doc/Eterm.tcap ${PREFIX}/share/doc/Eterm
	${INSTALL_DATA} ${WRKSRC}/doc/Eterm.ti ${PREFIX}/share/doc/Eterm

.include <bsd.port.mk>
