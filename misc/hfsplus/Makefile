COMMENT=	hfsplus filesystem access tool

VERSION=	1.0.4
DISTNAME=	hfsplus_${VERSION}
PKGNAME=	hfsplus-${VERSION}
REVISION=	7
SHARED_LIBS=	hfsp	0.0

CATEGORIES=	misc 

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB=		c

MASTER_SITES=		https://distfiles.sigtrap.nl/
EXTRACT_SUFX=		.src.tar.bz2

USE_GMAKE=		Yes

AUTOCONF_VERSION=	2.59
AUTOMAKE_VERSION=	1.9
AUTORECONF=		${MAKE_PROGRAM} -f Makefile.cvs all

CONFIGURE_STYLE=	gnu autoreconf
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			CFLAGS="${CFLAGS} -fgnu89-inline"

WRKDIST=		${WRKDIR}/hfsplus-${VERSION}

DOC=			bugs.html hfsp.html libhfsp.html

post-patch:
	@cd ${WRKDIST} && ln -s ${LOCALBASE}/share/libtool/config/ltmain.sh .

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/hfsplus/
.for h in ${DOC}
	${INSTALL_DATA} ${WRKSRC}/doc/${h} ${PREFIX}/share/doc/hfsplus/
.endfor

.include <bsd.port.mk>
