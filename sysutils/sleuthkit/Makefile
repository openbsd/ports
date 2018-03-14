# $OpenBSD: Makefile,v 1.23 2018/03/14 12:39:17 rpointel Exp $

COMMENT=		forensic toolkit based on TCT

DISTNAME=		sleuthkit-4.6.0
CATEGORIES=		sysutils security

SHARED_LIBS +=		tsk	1.0 # 17.0

HOMEPAGE=		http://www.sleuthkit.org/

MAINTAINER=		Nigel Taylor <nigel@openbsd.org>

# CPLv1 & IBM & GPLv2
PERMIT_PACKAGE_CDROM=	commercial contributor must indemnify all others
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES =		https://github.com/sleuthkit/sleuthkit/releases/download/${DISTNAME}/

WANTLIB += 		c m pthread ${COMPILER_LIBCXX} sqlite3 z

CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS += 	--mandir='${PREFIX}/man' \
			--disable-java \
			--without-afflib \
			--without-libewf

CONFIGURE_ENV =		ac_cv_path_CPPUNIT_CONFIG=no
RUN_DEPENDS =		converters/p5-DateManip
LIB_DEPENDS =		databases/sqlite3

NO_TEST =		Yes

pre-configure:
	@sed -i 's:%%PREFIX%%:${PREFIX}:' ${WRKSRC}/man/sorter.1

.include <bsd.port.mk>
