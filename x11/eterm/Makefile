# $OpenBSD: Makefile,v 1.6 2000/04/02 17:13:06 espie Exp $

PKGNAME=	eterm-0.8.10
DISTNAME=	Eterm-0.8.10
CATEGORIES=	x11
NEED_VERSION=	1.247
MASTER_SITES=	ftp://eterm.sourceforge.net/pub/eterm/ \
		ftp://ftp.eterm.org/pub/Eterm/ \
		http://eterm.is.nontoxic.org/download/ \

MAINTAINER=	halogen@nol.net

FAKE=		Yes

FLAVORS=kanji
FLAVOR?=


.if ${FLAVOR:L:Mkanji}
CFLAGS+=-DKANJI
CATEGORIES+=japanese
.endif

GNU_CONFIGURE= Yes
USE_GMAKE=     Yes
USE_LIBTOOL=   Yes
SEPARATE_BUILD=	Flavored

LIB_DEPENDS=	Imlib.19::graphics/imlib

PERMIT_PACKAGE_CDROM= Yes
PERMIT_PACKAGE_FTP=   Yes
PERMIT_DISTFILES_CDROM=       Yes
PERMIT_DISTFILES_FTP= Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/Eterm
	${INSTALL_DATA} ${WRKSRC}/ReleaseNotes ${PREFIX}/share/doc/Eterm
	${INSTALL_DATA} ${WRKSRC}/doc/Eterm.tcap ${PREFIX}/share/doc/Eterm
	${INSTALL_DATA} ${WRKSRC}/doc/Eterm.ti ${PREFIX}/share/doc/Eterm

.include <bsd.port.mk>

# XXX Tweak PKGNAME
.if ${FLAVOR:L:Mkanji}
PKGNAME:=ja-${PKGNAME:S/-kanji//}
.endif
