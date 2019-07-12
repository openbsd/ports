# $OpenBSD: Makefile,v 1.8 2019/07/12 20:45:57 sthen Exp $

COMMENT=	tool for editing version-control repository history

DISTNAME=	reposurgeon-3.42
REVISION=	0
EXTRACT_SUFX=	.tar.xz

CATEGORIES=	devel

HOMEPAGE=	http://www.catb.org/esr/reposurgeon/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += c ${MODPY_WANTLIB}

MASTER_SITES=	http://www.catb.org/esr/reposurgeon/

USE_GMAKE=	Yes
MODULES=	lang/python
CONFIGURE_STYLE= x	# bad python.port.mk
BUILD_DEPENDS=	lang/cython \
		textproc/asciidoc \
		textproc/xmlto

MAKE_FLAGS=	mandir=man
ALL_TARGET=	all cyreposurgeon
INSTALL_TARGET=	install install-cyreposurgeon

TEST_DEPENDS=	devel/pylint \
		shells/bash \
		sysutils/coreutils
TEST_TARGET=	check
TEST_FLAGS=	HOME=${WRKDIR}

pre-test:
	sed -i s,/usr/local,${LOCALBASE},g ${WRKSRC}/test/setpython
	-ln -s ${MODPY_BIN} ${WRKDIR}/bin/python
	-ln -s ${LOCALBASE}/python${MODPY_DEFAULT_VERSION_3} ${WRKDIR}/bin/python3
.for i in realpath make
	-ln -s ${LOCALBASE}/bin/g$i ${WRKDIR}/bin/$i
.endfor

MODPY_ADJ_FILES= repocutter repodiffer repomapper reposurgeon

.include <bsd.port.mk>
