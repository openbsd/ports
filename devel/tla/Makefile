# $OpenBSD: Makefile,v 1.5 2007/09/16 02:53:14 merdely Exp $

COMMENT=	original Arch source control management CLI written in C

DISTNAME=	tla-1.2
PKGNAME=	${DISTNAME}p0
CATEGORIES=	devel

HOMEPAGE=	http://www.gnuarch.org/

MAINTAINER=	Laurent Cheylus <foxy@free.fr>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m

MASTER_SITES=	${MASTER_SITE_GNU:=gnu-arch/} \
		http://regexps.srparish.net/src/tla/

RUN_DEPENDS=	:gdiff-*:textproc/gdiff \
		:gtar-*:archivers/gtar
BUILD_DEPENDS=	${RUN_DEPENDS}

USE_GMAKE=	Yes

WRKDIST=	${WRKDIR}/${DISTNAME}/src
WRKBUILD=	${WRKSRC}/=build

REGRESS_TARGET=	test

DOCDIR=	${PREFIX}/share/doc/tla

do-configure:
	cd ${WRKBUILD}; \
	../configure --prefix=${PREFIX} --destdir=${DESTDIR} \
	--with-gnu-diff ${LOCALBASE}/bin/gdiff \
	--with-gnu-diff3 ${LOCALBASE}/bin/gdiff3 \
	--with-gnu-tar ${LOCALBASE}/bin/gtar \
	--with-cc ${CC}

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/docs-tla/html/*.html ${DOCDIR}
	${STRIP} ${PREFIX}/bin/tla

.include <bsd.port.mk>
