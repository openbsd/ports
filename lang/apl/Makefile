# $OpenBSD: Makefile,v 1.2 2018/10/24 14:28:06 sthen Exp $

COMMENT =	interpreter for the programming language APL
DISTNAME =	apl-1.7
CATEGORIES =	lang
REVISION =	0

SHARED_LIBS +=	_sql                      0.0 # 0.0
SHARED_LIBS +=	_template_F0              0.0 # 0.0
SHARED_LIBS +=	_template_F12             0.0 # 0.0
SHARED_LIBS +=	_template_OP1             0.0 # 0.0
SHARED_LIBS +=	_template_OP2             0.0 # 0.0
SHARED_LIBS +=	emacs                     0.0 # 0.0

HOMEPAGE =	https://www.gnu.org/software/apl/
MAINTAINER =	Giuseppe Cocomazzi <sbudella@gmail.com>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m ncurses pthread ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =	${MASTER_SITE_GNU:=apl/}

RUN_DEPENDS =	fonts/apl-fonts

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--without-sqlite3 \
			--without-postgresql
CONFIGURE_ENV +=	CXX_WERROR=no

USE_GMAKE =	Yes

FAKE_FLAGS =	sysconfdir=${PREFIX}/share/examples/apl

pre-configure:
	sed -i 's,-O2,,g' ${WRKSRC}/configure \
		${WRKSRC}/src/{APs,native}/Makefile.in

.include <bsd.port.mk>
