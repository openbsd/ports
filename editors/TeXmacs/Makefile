# $OpenBSD: Makefile,v 1.15 2020/02/27 14:29:46 jca Exp $

COMMENT=	wysiwyw (what you see is what you want) editing platform

DISTNAME=	TeXmacs-1.99.12-src
PKGNAME=	${DISTNAME:S/-src//}
CATEGORIES=	editors print x11

HOMEPAGE=	https://texmacs.org/

MAINTAINER=	Nam Nguyen <namn@berkeley.edu>

MASTER_SITES=	http://texmacs.org/Download/ftp/tmftp/source/

# GPLv3
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5PrintSupport Qt5Widgets
WANTLIB += c execinfo freetype gmp guile jpeg ltdl m png sqlite3
WANTLIB += util z

MODULES=	devel/cmake \
		lang/python \
		x11/qt5

MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}
MODPY_ADJ_FILES=	plugins/tmpy/*.py \
			plugins/tmpy/{graph,session}/*.py

BUILD_DEPENDS=	print/ghostscript/gnu

RUN_DEPENDS=	devel/desktop-file-utils \
		misc/shared-mime-info \
		print/ghostscript/gnu \
		x11/gtk+3,-guic
LIB_DEPENDS=	databases/sqlite3 \
		devel/gmp \
		devel/libexecinfo \
		graphics/jpeg \
		graphics/png \
		lang/guile

CXXFLAGS+=	-Wno-deprecated-register

post-extract:
	rm -f ${WRKDIST}/plugins/mathematica/bin/realpath.py
	# change python interpreter per plugins/python/README.md
	sed -i 's,\(string-append.*\)python,\1python${MODPY_VERSION},' \
		${WRKSRC}/plugins/python/progs/init-python.scm
	sed -i 's,\(require.*\)python,\1python${MODPY_VERSION},' \
		${WRKSRC}/plugins/python/progs/init-python.scm
.for l in asymptote dratex gnuplot graph graphviz sympy xypic
	find ${WRKSRC}/plugins/$l -name '*.scm' \
		-exec sed -i 's,python,python${MODPY_VERSION},' {} \;
.endfor

.include <bsd.port.mk>
