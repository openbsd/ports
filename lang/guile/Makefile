# $OpenBSD: Makefile,v 1.25 2005/12/22 12:21:44 steven Exp $

COMMENT=	"GNU's Ubiquitous Intelligent Language for Extension"

DISTNAME=	guile-1.6.7
PKGNAME=	$(DISTNAME)p2
CATEGORIES=	lang
MASTER_SITES=	${MASTER_SITE_GNU:=guile/}

HOMEPAGE=	http://www.gnu.org/software/guile/

MAINTAINER=	Bruno Rohee <rohee@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m ncurses readline

SEPARATE_BUILD=		Yes
CONFIGURE_STYLE=	gnu
USE_LIBTOOL=		Yes
USE_GMAKE=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/aclocal
	${INSTALL_DATA} ${WRKSRC}/guile-config/qthreads.m4 ${PREFIX}/share/aclocal
	@cd ${PREFIX}/share/guile && ln -s ../slib

.include <bsd.port.mk>
