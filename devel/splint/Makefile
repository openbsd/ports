# $OpenBSD: Makefile,v 1.1.1.1 2002/02/23 23:59:18 espie Exp $

COMMENT=	"advanced lint: statically check C programs"
DISTNAME=	splint-3.0.1.6
CATEGORIES=	devel
NEED_VERSION=	1.470

MASTER_SITES=	http://www.splint.org/downloads/
MASTER_SITES0=	http://www.splint.org/manual/

AUTHOR=		evans@virginia.edu # David Evans
HOMEPAGE=	http://www.splint.org/

# For the documentation
DIST_SUBDIR=	splint-3.0.1.6
DISTFILES=	${DISTNAME}.src.tgz \
		manual.html:0

EXTRACT_ONLY=	${DISTNAME}.src.tgz

MAINTAINER=	Marc Espie <espie@openbsd.org>

# Has to use bison because splint uses pure parsers
BUILD_DEPENDS=	:bison-*:devel/bison

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

pre-build:
	-rm ${WRKSRC}/src/{cgrammar,llgrammar,mtgrammar,signature}.c

DOCDIR=	${PREFIX}/share/doc/splint

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${FULLDISTDIR}/manual.html ${DOCDIR}

.include <bsd.port.mk>
