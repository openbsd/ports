# $OpenBSD: Makefile,v 1.9 2000/07/03 05:53:57 brad Exp $

PKGNAME=	eterm-0.8.10
DISTNAME=	Eterm-0.8.10
CATEGORIES=	x11
NEED_VERSION=	1.310
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= eterm

HOMEPAGE=	http://eterm.sourceforge.net/

LIB_DEPENDS=	Imlib.19::graphics/imlib

MAINTAINER=	halogen@nol.net

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE= gnu
SEPARATE_BUILD=	Flavored

FLAVORS=	kanji
FLAVOR?=

.if ${FLAVOR:L:Mkanji}
CFLAGS+=	-DKANJI
CATEGORIES+=	japanese
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/Eterm
	${INSTALL_DATA} ${WRKSRC}/ReleaseNotes ${PREFIX}/share/doc/Eterm
	${INSTALL_DATA} ${WRKSRC}/doc/Eterm.tcap ${PREFIX}/share/doc/Eterm
	${INSTALL_DATA} ${WRKSRC}/doc/Eterm.ti ${PREFIX}/share/doc/Eterm

.include <bsd.port.mk>

# XXX Tweak PKGNAME
.if ${FLAVOR:L:Mkanji}
PKGNAME:=	ja-${PKGNAME:S/-kanji//}
PKG_ARGS+=	-C 'eterm-*'
.else
PKG_ARGS+=	-C 'ja-eterm-*'
.endif
