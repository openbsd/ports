# $OpenBSD: Makefile,v 1.1.1.1 2006/11/12 15:59:05 matthieu Exp $

COMMENT=		"GIT - Tree History Storage Tool"

DISTNAME=		git-1.4.3.4
CATEGORIES=		devel

HOMEPAGE=		http://git.or.cz/

MAINTAINER=		matthieu@openbsd.org

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

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

.include <bsd.port.mk>
