# $OpenBSD: Makefile,v 1.16 2003/05/13 03:06:41 cannings Exp $

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

LIB_DEPENDS=		Xg.0.0,frame.0.0,plan9c.0.0::plan9/9libs

SEPARATE_BUILD=		simple
USE_X11=		Yes
CONFIGURE_STYLE= 	gnu

NO_REGRESS=		Yes

post-install:
	${INSTALL_MAN} ${FILESDIR}/wily.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
