# $OpenBSD: Makefile,v 1.2 2016/08/05 17:53:40 kili Exp $

COMMENT=	tool for editing version-control repository history

DISTNAME=	reposurgeon-3.37
EXTRACT_SUFX=	.tar.xz

CATEGORIES=	devel

HOMEPAGE=	http://www.catb.org/esr/reposurgeon/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

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

# there are tests in the repo, but not in the tar.xz.
# scaffolding left in place for people who want to fetch and run it,
# but: the pylint check fails (modify the Makefile to skip it or to
# allow other tests to continue), and the setpython script doesn't
# work with our sh.
MO_TEST=	Yes

TEST_DEPENDS=	devel/pylint \
		sysutils/coreutils
TEST_TARGET=	check
TEST_FLAGS=	HOME=${WRKDIR}

pre-test:
	-ln -s ${MODPY_BIN} ${WRKDIR}/bin/python
	-ln -s ${LOCALBASE}/python${MODPY_DEFAULT_VERSION_3} ${WRKDIR}/bin/python3
.for i in realpath make
	-ln -s ${LOCALBASE}/bin/g$i ${WRKDIR}/bin/$i
.endfor

MODPY_ADJ_FILES= repocutter repodiffer repomapper reposurgeon

.include <bsd.port.mk>
