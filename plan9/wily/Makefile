# $OpenBSD: Makefile,v 1.19 2006/09/18 11:59:59 espie Exp $

COMMENT=	"clone of the Plan9 editor 'acme'"

VERSION=	0.13.41
DISTNAME=	wily-9libs
PKGNAME=	${DISTNAME}-${VERSION}
CATEGORIES=	plan9 editors
MASTER_SITES=	ftp://ftp.cs.yorku.ca/pub/wily/src/

HOMEPAGE=	http://www.cs.yorku.ca/~oz/wily/

MAINTAINER= 	rich cannings <cannings@cvs.openbsd.org>

# BSD licence
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xt c m

LIB_DEPENDS=		Xg,frame,plan9c::plan9/9libs

SEPARATE_BUILD=		simple
USE_X11=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS=		--with-9libs=${LOCALBASE}/include/9libs
CONFIGURE_ENV=		mhw_cv_mod_9libs_lib_path=${LOCALBASE}/lib

NO_REGRESS=		Yes

post-install:
	${INSTALL_MAN} ${FILESDIR}/wily.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
