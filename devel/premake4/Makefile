COMMENT=		build configuration tool

# XXX the C code embeds the lua sources that we have to patch. Use
# ''./bin/release/premake4 embed'' to regen the C files, and save a copy
# of the affected files in ${FILESDIR}.
DISTNAME=		premake-4.4-beta5-src
PKGNAME=		premake4-4.4beta5
REVISION=		1

CATEGORIES=		devel

HOMEPAGE=		https://premake.github.io

MAINTAINER=		Solene Rapenne <solene@perso.pw>

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=premake/}
EXTRACT_SUFX=		.zip

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=		c m

USE_GMAKE=		Yes
MAKE_FLAGS=		CC="${CC}" \
			verbose=1

WRKDIST=		${WRKDIR}/${DISTNAME:S/-src$//}
WRKBUILD=		${WRKSRC}/build/gmake.unix
FIX_CRLF_FILES=		src/base/os.lua

post-extract:
	cp ${FILESDIR}/scripts.c ${WRKSRC}/src/host/

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bin/release/premake4 ${PREFIX}/bin/premake4

do-test:
	mkdir -p ${WRKSRC}/bin/debug/
	ln -sf ${WRKSRC}/bin/release/premake4 ${WRKSRC}/bin/debug/premake4
	cd ${WRKSRC}/tests ; /bin/sh test

.include <bsd.port.mk>
