# $OpenBSD: Makefile,v 1.16 2002/12/29 20:31:41 fgsch Exp $

COMMENT=	"color X11 terminal emulator with transparency support"
COMMENT-kanji=	"color japanese terminal emulator with transparency support"
PKGNAME=	eterm-0.8.10
FULLPKGNAME-kanji=	ja-eterm-0.8.10
DISTNAME=	Eterm-0.8.10
CATEGORIES=	x11
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=eterm/}

HOMEPAGE=	http://eterm.sourceforge.net/

LIB_DEPENDS=	Imlib.19::graphics/imlib

MAINTAINER=	Kyle Hargraves <halogen@nol.net>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

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
