# $OpenBSD: Makefile,v 1.33 2019/07/12 20:48:54 sthen Exp $

COMMENT=	clone of the Plan9 editor 'acme'

VERSION=	0.13.41
DISTNAME=	wily-9libs
PKGNAME=	${DISTNAME:S/-/_/}-${VERSION}
EPOCH=		1
CATEGORIES=	plan9 editors
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=wily/} \
		ftp://ftp.cs.yorku.ca/pub/wily/src/old/ \
		ftp://ftp.cs.yorku.ca/pub/wily/src/
REVISION=	0

HOMEPAGE=	http://www.cs.yorku.ca/~oz/wily/

# BSD licence
PERMIT_PACKAGE=	Yes
WANTLIB=		ICE SM X11 Xg Xt c frame m plan9c xcb

LIB_DEPENDS=		plan9/9libs

SEPARATE_BUILD=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS=		--with-9libs=${LOCALBASE}/include/9libs
CONFIGURE_ENV=		mhw_cv_mod_9libs_lib_path=${LOCALBASE}/lib

NO_TEST=		Yes

post-install:
	${INSTALL_MAN} ${FILESDIR}/wily.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
