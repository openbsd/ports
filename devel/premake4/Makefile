# $OpenBSD: Makefile,v 1.4 2016/12/05 10:35:10 jca Exp $

COMMENT=		build configuration tool

# XXX the C code embeds the lua sources that we have to patch. Use
# ''./bin/release/premake4 embed'' to regen the C files, and save a copy
# of the affected files in ${FILESDIR}.
DISTNAME=		premake-4.4-beta5-src
PKGNAME=		premake4-4.4beta5
REVISION=		0

CATEGORIES=		devel

HOMEPAGE=		https://premake.github.io

MAINTAINER=		Solene Rapenne <solene@perso.pw>

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=premake/}
EXTRACT_SUFX=		.zip

# BSD
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c m

USE_GMAKE=		Yes
MAKE_FLAGS=		verbose=1

WRKDIST=		${WRKDIR}/${DISTNAME:S/-src$//}
WRKBUILD=		${WRKSRC}/build/gmake.unix

post-extract:
	perl -pi -e 's/\r$$//' ${WRKSRC}/src/base/os.lua
	cp ${FILESDIR}/scripts.c ${WRKSRC}/src/host/

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bin/release/premake4 ${PREFIX}/bin/premake4

do-test:
	mkdir -p ${WRKSRC}/bin/debug/
	ln -sf ${WRKSRC}/bin/release/premake4 ${WRKSRC}/bin/debug/premake4
	cd ${WRKSRC}/tests ; /bin/sh test

.include <bsd.port.mk>
