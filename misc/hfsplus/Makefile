# $OpenBSD: Makefile,v 1.23 2011/06/30 20:18:01 jasper Exp $

COMMENT=	hfsplus filesystem access tool

VERSION=	1.0.4
DISTNAME=	hfsplus_${VERSION}
PKGNAME=	hfsplus-${VERSION}
REVISION=	4
SHARED_LIBS=	hfsp	0.0

CATEGORIES=	misc 

# GPL
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c

MASTER_SITES=		http://distfiles.nl/
EXTRACT_SUFX=		.src.tar.bz2

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes

AUTOCONF_VERSION=	2.59
AUTOMAKE_VERSION=	1.9
BUILD_DEPENDS=		${MODGNU_AUTOCONF_DEPENDS}
# needs the AM_PROG_LIBTOOL macro                                           
BUILD_DEPENDS +=	devel/libtool

# actually uses automake/autoheader, but that is done in pre-configure now
CONFIGURE_STYLE=	automake
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}

WRKDIST=		${WRKDIR}/hfsplus-${VERSION}

DOC=bugs.html hfsp.html libhfsp.html

pre-configure:
	@cd ${WRKDIST} && ln -s ${LOCALBASE}/share/libtool/ltmain.sh
	@cd ${WRKDIST} && AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		${MAKE_PROGRAM} -f Makefile.cvs all

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/hfsplus/
.for h in ${DOC}
	${INSTALL_DATA} ${WRKSRC}/doc/${h} ${PREFIX}/share/doc/hfsplus/
.endfor

.include <bsd.port.mk>
