COMMENT=	export an RCS or CVS history as a fast-import stream

DISTNAME=	cvs-fast-export-1.49

CATEGORIES=	devel

HOMEPAGE=	http://www.catb.org/esr/cvs-fast-export/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += c pthread

MASTER_SITES=	http://www.catb.org/esr/cvs-fast-export/

# XXX weird tar, includes files symlinked to themselves
BUILD_DEPENDS=	archivers/gtar
TAR=		gtar

USE_GMAKE=	Yes
MODULES=	lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}
CONFIGURE_STYLE= x	# bad python.port.mk
MAKE_FLAGS=	CFLAGS="${CFLAGS}" mandir=${WRKINST}${PREFIX}/man
BUILD_DEPENDS+=	devel/bison \
		textproc/asciidoc

ALL_TARGET=	cvs-fast-export
TEST_TARGET=	check
TEST_FLAGS=	HOME=${WRKDIR} MAKE_PROGRAM=${MAKE_PROGRAM}
MODPY_ADJ_FILES= cvsconvert cvssync

post-install:
	sed -i "s,&#8217;,',g" ${PREFIX}/man/man1/*.1

pre-test:
	-ln -s ${MODPY_BIN} ${WRKDIR}/bin/python
	-ln -s ${LOCALBASE}/bin/python${MODPY_DEFAULT_VERSION_3} \
	    ${WRKDIR}/bin/python3
	sed -i 's,^UseNewInfoFmtStrings=yes,#UseNewInfoFmtStrings=yes,' \
	    ${WRKSRC}/tests/*/CVSROOT/config # avoid warnings from old cvs

.include <bsd.port.mk>
