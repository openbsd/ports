# $OpenBSD: Makefile,v 1.7 2007/04/12 09:37:12 bluhm Exp $

COMMENT=		"GIT - Tree History Storage Tool"

V=			1.4.4.4
DISTNAME=		git-${V}
PKGNAME=		${DISTNAME}p0
CATEGORIES=		devel

HOMEPAGE=		http://git.or.cz/

MAINTAINER=		matthieu@openbsd.org

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

DISTFILES=		${DISTNAME}${EXTRACT_SUFX} \
			git-manpages-${V}${EXTRACT_SUFX} \
			git-htmldocs-${V}${EXTRACT_SUFX}

WANTLIB=		c crypto iconv z

MASTER_SITES=		http://www.kernel.org/pub/software/scm/git/

TAR=			${LOCALBASE}/bin/gtar
PYTHON_VER=		2.4

MODULES=		converters/libiconv

BUILD_DEPENDS=		::archivers/gtar \
			::devel/p5-Error
RUN_DEPENDS=		::lang/python/${PYTHON_VER} \
			::x11/tk/8.4 \
			::net/rsync
LIB_DEPENDS=		curl.>=3::net/curl \
			expat.>=4::textproc/expat

MAKE_ENV=		prefix=${PREFIX} \
			PYTHON_PATH=${LOCALBASE}/bin/python${PYTHON_VER} \
			CC="${CC}" \
			CFLAGS="${CFLAGS}"

USE_X11=		Yes
USE_GMAKE=		Yes

NO_REGRESS=		Yes

post-install:
			cd ${WRKDIR} ; \
			pax -rw -s,man7/git.7,man1/git.1, man* ${PREFIX}/man
			${INSTALL_DATA_DIR} ${PREFIX}/share/doc/git
			cd ${WRKDIR} ; \
			pax -rw *.html howto/*.html *.txt howto/*.txt \
			    ${PREFIX}/share/doc/git

.include <bsd.port.mk>
