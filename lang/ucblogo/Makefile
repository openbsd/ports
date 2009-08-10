# $OpenBSD: Makefile,v 1.5 2009/08/10 17:31:07 kili Exp $

COMMENT=	berkeley's implementation of the logo programming language
DISTNAME=	ucblogo-5.5
PKGNAME=	${DISTNAME}p1
CATEGORIES=	lang

MASTER_SITES=	http://mirrors.protection.cx/~jolan/
HOMEPAGE=	http://www.cs.berkeley.edu/~bh/logo.html

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE SM X11 c m pthread-stubs termcap xcb
NO_REGRESS=	Yes
USE_X11=	Yes

MAKE_FILE=	makefile
ALL_TARGET=	logo makehelp helpfiles helpfiles/HELPCONTENTS

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--x-includes=${X11BASE}/include \
		--x-libraries=${X11BASE}/lib

pre-configure:
	@perl -pi -e 's:\@logopath@:${LOCALBASE}/share/ucblogo:g;' \
		${WRKSRC}/init.c
	@perl -pi -e 's:\@logohelp@:${LOCALBASE}/share/ucblogo/helpfiles:g;' \
		${WRKSRC}/init.c

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/ucblogo/helpfiles 
	${INSTALL_DATA} ${WRKSRC}/helpfiles/* ${PREFIX}/share/ucblogo/helpfiles
	${INSTALL_DATA} ${WRKSRC}/Messages ${PREFIX}/share/ucblogo/messages
	${INSTALL_PROGRAM} ${WRKSRC}/logo ${PREFIX}/bin

.include <bsd.port.mk>
